teachers = ['jojo', 'juju', 'jeanro', 'guillaume', 'clement']

j_teachers = teachers.select do |teacher|
    teacher.start_with?('j')
end

p j_teachers