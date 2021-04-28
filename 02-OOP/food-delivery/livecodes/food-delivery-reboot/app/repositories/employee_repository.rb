require "csv"
require_relative "../models/employee"
class EmployeeRepository 
  def initialize(csv_file_path)
    @csv_file_path  = csv_file_path
    @next_id  = 1
    @employees = []
    @csv_options   = { headers: :first_row, header_converters: :symbol }
    load_csv if File.exist? csv_file_path
  end

  # undef method

  
  def find(id)
    @employees.find { |employee| employee.id == id }
    # @elements[ - 1]
  end

  def find_by_username(username)
    @employees.find { |employee| employee.username == username}
  end

  private
  def get_next_id
    @next_id = @employees.empty? ? 1 : @employees.last.id + 1
  end

  def load_csv
    CSV.foreach(@csv_file_path, @csv_options) do |row|
      row[:id] = row[:id].to_i
      @employees << Employee.new(row)
    end
    get_next_id
  end
end