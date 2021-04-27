require "csv"
class RecordRepository
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @csv_options   = { headers: :first_row, header_converters: :symbol }
    @records         = []
    @next_id       = 1
    load_csv if File.exist?(csv_file_path)
  end

  def all
    @records
  end

  def find(index)
    # @record.find { |record| record.id == id }
    @record[index - 1]
  end

  def create(record)
    record.id = @next_id
    @records << record
    @next_id += 1
    save_csv
  end

  def destroy(index)
    # @meals.find { |meal| meal.id == id }
    @records.delete_at(index - 1)
  end

  private 

  def save_csv
    CSV.open(@csv_file_path, 'wb') do |csv|
      csv << headers
      @records.each do |record|
        csv << record_to_row(record)
      end
    end
  end

  def load_csv
    CSV.foreach(@csv_file_path, @csv_options) do |row|
      p row_to_record(row)
      p row
      @records << row_to_record(row)
    end
    @next_id = @records.empty? ? 1 : @records.last.id + 1
  end
end
