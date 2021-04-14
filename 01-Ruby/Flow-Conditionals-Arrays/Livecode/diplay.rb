students = ["toto", "titi", "tata", "tutu"] 
#             0       1       2       3
# student.length == 4

if students.length > 1
    puts "#{students[0..-2].join(', ')} and #{students.last}"
else 
    puts students.first
end

sentence = ""
students.each do |student|
    if students.length > 1
        sentence += ", " unless student == students.first
        if students.last == student
            sentence += "and "
        end
    end
    sentence += student
end
puts sentence

# "toto, titi, tata and tutu"