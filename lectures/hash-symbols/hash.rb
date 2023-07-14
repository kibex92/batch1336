# YEAR OF FRAUENKIRCHE
# p munich["monuments"][0]["year"]
  # HASH    ARRAY       HASH
# CRUD IN Hashes

# READ
# p munich["monument"] 
# p munich["mayor"] # => Nil

# HASH
# VARIABLE_NAME[KEY]

# ARRAY
# VARIABLE_NAME[INDEX]

# CREATE
# munich["area"] = "400m2"

# UPDATE
# munich["population"] = 2000000
# munich["population"] += 1

# DELETE
# munich.delete("monument")
# p munich

# munich.each do |key, value|
#   puts "Munich's #{key} is #{value}"
# end

# munich.key?("monuments") # => true
# munich.key?("state") # => false

# GET ALL KEYS
# p munich.keys # => ["monuments", "weather", "population"...]

# values = munich.values # => 
# p values[0][0]["bishops"][0]["name"] # => Ratzinger

# WITH OLD SYNTAX
# munich = {
#   # KEY => VALUE
#   "monuments" => [ 
#     {
#     "name" => "Frauenkirche",
#     "year" => 1494,
#     "bishops" => [
#       {
#         "name" => "ratzinger"
#       }
#     ]
#     }
#   ],
#   "population" => 1500000,
#   "weather" => "crazy"
# }
munich = {
  # KEY => VALUE
  monuments: [ 
    {
    name: "Frauenkirche",
    year: 1494,
    bishops: [
      {
        name: "ratzinger"
      }
    ]
    }
  ],
  population: 1500000,
  weather: "crazy"
}

# p munich[:population]
# p munich["population"]

# HASH AS A LAST METHOD ARGUMENT

def tag(tag_name, content, attributes = {})
  html_strings = attributes.map do |key, value|
     " #{key}='#{value}'"
  end.join
  # html_attributes = html_strings.join
  return "<#{tag_name}#{html_strings}>#{content}</#{tag_name}>"
end


p tag("h1", "Hello world")
# <h1>Hello world</h1>

p tag("a", "Le Wagon", { href: "http://lewagon.org", class: "btn", id: "logo" })
# => <a href='http://lewagon.org' class='btn'>Le Wagon</a>