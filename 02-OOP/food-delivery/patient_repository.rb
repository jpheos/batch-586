require "csv"
class PatientRepository
  def initialize(csv_file_path, room_repository)
    @csv_file_path  = csv_file_path
    load_csv if csv_file_path
    @next_id = 1
    @patients = []
    @room_repository = room_repository
  end

  def add_patient
    patient.id = @next_id
    @patients << patient
    next_id += 1
  end



  private

  def save_csv
    CSV.open(@csv_file_path, 'wb') do |csv|
      csv << ["id", "name","cured","room_id"]
      @patients.each do |patient|
        csv << [patient.id, patient.name, patient.cured, patient.room.id]
      end
    end
  end

  def load_csv
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(csv_file, csv_options) do |row|
    id      = row[:id].to_i          # Convert column to Integer
    name    = row[:name]
    cured   = row[:cured] == "true"
    patient = Patient.new(id:id, name: name, cured: cured )
    room_id = row[:room_id].to_i

    room         = @room_repository.find(room_id)
    patient.room = room
    @patients << patient
     # Convert column to boolean
    end
    @next_id = @patient.empty? ? 1 : @patients.last.id + 1
  end
  end

end