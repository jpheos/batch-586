age = 18

if age < 18
    # puts "Je ne peux pas encore boire :("
else
    # puts "je fbads peeux boiiiries"
end

grades = [19, 8, 11, 15, 13]
#sum of array / size of array
sum = 0
grades.each { |grade| sum = sum + grade }

average = sum / grades.size

grades.sum / grades.size

def full_name_capitalisation(first_name, last_name)
    first_name.capitalize + " " + last_name.capitalize
end

def full_name_capitalisation(first_name, last_name)
    "#{first_name.capitalize} #{last_name.capitalize}"
end

fruits = ["banana", "peach", "watermelon", "orange"]
#             0       1          2             3
# Print out "peach" from the fruits array in the terminal

# puts fruits[1]

# Add an "apple" to the fruits array

fruits.push("apple")
fruits << "apple"

# Replace "watermelon" by "pear"

fruits[2] = "pear"

# Delete "orange"

fruits.last #=> "orange"
fruits[3] #=> "orange"

fruits.delete("orange")

fruits.delete(fruits.last)
fruits.delete_at(3)
fruits.pop


city = { name: "Paris", population: 20000000 }

# Print out the name of the city
# puts city[:name]

# Add the Eiffel Tower to city with the `:monument` key
city[:monument] #=> nil
city[:monument] = "Tour eiffel"

# Update the population to 20000001

city[:population] += 1

# What will the following code return?
city[:mayor] # => nil

students = [ [ "john", 28 ], [ "mary", 25 ], [ "paul", 21 ] ]

students_hash = [{ name: "John", age: 28},{ name: "mary", age: 25},{ name: "paul", age: 21} ]

students_hash = students.map do |student|
    {
        name: student[0],
        age: student[1]
    }
end

p students_hash

