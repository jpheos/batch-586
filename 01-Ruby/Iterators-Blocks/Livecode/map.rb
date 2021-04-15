teachers = ['jojo', 'juju', 'jeanro', 'guillaume', 'clement']

def map(array)
    #return new array with transformation for each element
    new_array = []
    array.each do |element|
        new_array << yield(element)
    end
    new_array

end

#transformer les elements d'un tableau un par un

new_teachers = map(teachers) do |teacher|
    teacher.capitalize
end

best_teachers = map(teachers) do |teacher|
    "Clément"
end

p best_teachers

p new_teachers == ['Jojo', 'Juju', 'Jeanro', 'Guillaume', 'Clement']