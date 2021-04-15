teachers = ['jojo', 'juju', 'jeanro', 'guillaume', 'clement']

count = teachers.count do |teacher|
    teacher.start_with?('j')
end

# count = 0
# teachers.each do |teacher|
#     if teacher.start_with?('j')
#         count += 1
#     end
# end

puts count