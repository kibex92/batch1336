students =     [ "Peter", "Mary", "Lucas", "George", "Emma" ]
# student_ages = [ 24     , 25    , 22      ,  20    ]

# Peter is 24 years old, Mary is 25 years old etc.

# students.each_with_index do |student, index|
#   age = student_ages[index]
#   puts "#{student} is #{age} years old"
# end

# READ
students[3] # => George

# CREATE
students << "Deyvison"
students.push("Deyvison") # Alternative

# UPDATE
students[-1] = "Simone"

# DELETE
students.delete("George")
students.delete_at(1)