students =     [ "Peter", "Mary", "George", "Sebastien" ]
student_ages = [ 24     , 25    , 22      ,  20    ]

index = students.index("Sebastien")
student_ages[index] += 1

students.each_with_index do |student, index|
    p "#{student} has #{student_ages[index]} years old"
end

