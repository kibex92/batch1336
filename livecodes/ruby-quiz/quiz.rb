grades = [19, 8, 11, 15, 13]

sum = 0

grades.each do |grade|
  sum += grade
end

# p grades.sum.fdiv(grades.size)
# p sum.to_f / grades.size
# p sum.fdiv(grades.size)

def capitalize_name(first_name, last_name)
  "#{first_name.capitalize} #{last_name.capitalize}"
end

p capitalize_name("simone", "wurz")

p "tomorrow" + "is" + "saturday"
name = "Linda"
p "hi, i'm #{name}"

fruits = ["banana", "peach", "watermelon", "orange"]

# Print out "peach" from the fruits array in the terminal
p fruits[1]
# Add an "apple" to the fruits array
p fruits << "apple"  
# Replace "watermelon" by "pear"
p fruits[2] = "pear"
# Delete "orange"
fruits.delete("orange")
fruits.delete_at(-2)

city = { name: "Munich", population: 1500000 }

# Print out the name of the city
p city[:name]
# Add the Oktoberfest to city with the `:monument` key
city[:monument] = "Oktoberfest"
# Update the population to 2000001
city[:name] = "Monaco di Bavaria"
# What will the following code return?
city[:mayor] # nil

p city

students = [ [ "john", 28 ], [ "mary", 25 ], [ "paul", 21 ] ]

# converted_students = students.map { |student| { name: student[0], age: student[1]} }


students_hash = students.map do |name, age|
  # name = student[0]
  # age = student[1]
  {
    name: name,
    age: age
  }
end

p students_hash
# p converted_students