# students_age = {
#     "Peter" => 22,
#     "Mary" => 24,
#     "Georges" => {
#         "age" => 30
#     },
#     "Emma" => 20,
#     "Patrice" => 28
# }

# name = "Georges"
# p "#{name} a #{students_age[name]["age"]} ans"

# students_age["Georges"] = 26
# students_age["Georges"] = "W."

# students_age.delete("Emma")

# p students_age["Emma"] # => Nil


# students_age.each do |klef, valeur|
#     if valeur.integer? && valeur >= 25
#         p klef
#     end
# end

students_age = {
    "Peter" => 22,
    "Mary" => 24,
    "Georges" => 30,
    "Emma" => 20,
    "Patrice" => 28
}

p students_age.key?("Toto")
p students_age.value?(22)
p students_age.keys
p students_age.values
