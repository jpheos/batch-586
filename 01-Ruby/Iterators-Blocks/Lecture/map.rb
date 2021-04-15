teachers = ['jojo', 'juju', 'jeanro', 'guillaume', 'clement']
# I want that: ['Jojo', 'Juju', 'Jeanro', 'Guillaume', 'Clement']

# cool_teachers = []
# teachers.each do |teacher|
#     cool_teachers << teacher.capitalize
# end

# cool_teachers = teachers.map do |teacher|
#     if teacher.start_with? 'j'
#         teacher.capitalize
#     else
#         teacher
#     end
# end

cool_teachers = teachers.map do |teacher|
    teacher.upcase + " Il est génial"
end

p cool_teachers
