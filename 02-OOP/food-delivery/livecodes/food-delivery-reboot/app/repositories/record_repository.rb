require "csv"
class RecordRepository
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @csv_options   = { headers: :first_row, header_converters: :symbol }
    @elements      = []
    @next_id       = 1
    load_csv if File.exist?(csv_file_path)
  end

  def all
    @elements
  end

  def find(index)
    # @elements.find { |element| element.id == id }
    @elements[index - 1]
  end

  def create(element)
    element.id = @next_id
    @elements << element
    @next_id += 1
    save_csv
  end

  def destroy(index)
    # @meals.find { |meal| meal.id == id }
    @elements.delete_at(index - 1)
  end

  private 

  def save_csv
    CSV.open(@csv_file_path, 'wb') do |csv|
      csv << headers
      @elements.each do |element|
        csv << record_to_row(element)
      end
    end
  end

  def load_csv
    CSV.foreach(@csv_file_path, @csv_options) do |row|
      @elements << row_to_record(row)
    end
    @next_id = @elements.empty? ? 1 : @elements.last.id + 1
  end
end
