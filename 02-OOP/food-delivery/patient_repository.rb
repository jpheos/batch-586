require "csv"
class PatientRepository
  def initialize(csv_file_path, room_repository)
    @csv_file_path  = csv_file_path
    load_csv if csv_file_path
    @next_id = 1
    @patients = []
    @room_repository = room_repository
  end

  def add_patient(patient)
    # set the id of the patient (we won't ask the user for an id!)
    patient.id = @next_id
    @patients << patient
    # we increment the next_id
    next_id += 1
    save_csv
  end



  private

  def save_csv
    CSV.open(@csv_file_path, 'wb') do |csv|
      csv << ["id", "name","cured","room_id"] # don't forget the headers
      @patients.each do |patient|
        csv << [patient.id, patient.name, patient.cured, patient.room.id] # patient.room is an instance of room we can't store an object in the csv
      end
    end
  end

  def load_csv
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(csv_file, csv_options) do |row|
    id      = row[:id].to_i          # Convert column to Integer
    name    = row[:name]
    cured   = row[:cured] == "true" # Convert column to boolean
    patient = Patient.new(id:id, name: name, cured: cured )

    room_id = row[:room_id].to_i # I receive  the room_id
    room         = @room_repository.find(room_id) # I find the instance of room with the id in the room repo
    patient.room = room # rehydratation
    @patients << patient
    end
    @next_id = @patient.empty? ? 1 : @patients.last.id + 1 # set the next_id
  end
  end

end