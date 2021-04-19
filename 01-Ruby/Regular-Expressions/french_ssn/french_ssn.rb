# 1 84 12 76 451 089 46

# Gender (1 == man, 2 == woman)
# Year of birth (84)
# Month of birth (12)
# Department of birth (76, basically included between 01 and 99)
# 6 random digits (451 089)
# A 2 digits key (46, equal to the remainder of the division of (97 - ssn_without_key) by 97.)

# The method must return the following strings:

# french_ssn_info("1 84 12 76 451 089 46")
# => "a man, born in December, 1984 in Seine-Maritime."

# french_ssn_info("123")
# => "The number is invalid"

require 'Date'
require 'yaml'

SSN_NUMBER_PATTERN = /^(?<gender>[12])\s*(?<year>\d{2})\s*(?<month>0[1-9]|1[0-2])\s*(?<zip>0[1-9]|[1-9]\d)\s*(?<random1>\d{3})\s*(?<random2>\d{3})\s*(?<key>\d{2})$/

def get_gender(gender_string)
  if gender_string == "1"
    "man"
  else
    "woman"
  end
end

def get_month(month_string)
  Date::MONTHNAMES[month_string.to_i]
end

def get_year(year_string)
  "19#{year_string}"
end

DEPARTMENTS_FILE_PATH = 'data/french_departments.yml'
def get_department(zip_string)
  departments = YAML.load_file(DEPARTMENTS_FILE_PATH)

  departments[zip_string]
end

# 1 84 12 76 451 089 46
# 46 = (97 - 1841276451089) % 97
# remainder of the division of (97 - ssn_without_key) by 97
def valid_key?(match_data)
  match_data[:key].to_i == (97 - match_data[1..-2].join.to_i) % 97
end

def french_ssn_info(ssn_number)
  # First character must be 1 or 2
  # Maybe a space or more
  # Two digits
  # Maybe a space or more
  # One character between 0 and 1
  # If first digit 0 -> 1-9
  # If first digit 1 -> 0-2
  # Maybe a space or more
  # One character between 0 and 9
  # If first digit 0 -> 1-9
  # If first digit 1-9 -> 0-9
  # Maybe a space or more
  # 3 digits
  # Maybe a space or more
  # 3 digits
  # Maybe a space or more
  # 2 digits

  # { gender: "1", month: "12" ... }
  match_data = ssn_number.match(SSN_NUMBER_PATTERN)

  if match_data && valid_key?(match_data)
    gender = get_gender(match_data[:gender])
    month = get_month(match_data[:month])
    year = get_year(match_data[:year])
    department = get_department(match_data[:zip])

    return "a #{gender}, born in #{month}, #{year} in #{department}."
  else
    return "The number is invalid"
  end
end
