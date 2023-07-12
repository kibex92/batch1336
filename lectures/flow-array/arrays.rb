teams = ["AC Milan", "Bayern Munich", "Real Madrid", "FC St. Pauli"]

# CRUD
# READ
# puts teams[1]

# CREATE
teams << "PSG"
teams.unshift("Liverpool")
# teams.push("PSG")
# p teams

# UPDATE
teams[0] = "Inter Milan"
teams << "Inter Milan"

# DELETE
# teams.delete("Inter Milan")
teams.delete_at(4)

teams.each do |team|
  puts "#{team} is the best club in the world! "
end
