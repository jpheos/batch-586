require "csv"
require_relative "../models/customer"
require_relative "record_repository"

class CustomerRepository < RecordRepository
  def update(customer)
    p customer
    save_csv
  end

  private
  
  def row_to_record(row)
    row[:id] = row[:id].to_i
    Customer.new(row)
  end

  def record_to_row(customer)
    [customer.id,customer.name,customer.address]
  end

  def headers
    ["id","name","address"]
  end

end