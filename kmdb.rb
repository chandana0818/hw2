# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy
# - Movie data includes the movie title, year released, MPAA rating,
#   and director
# - A movie has a single director
# - A person can be the director of and/or play a role in a movie
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Execute the migration files to create the tables in the database. Add the
#   relevant association methods in each model. (5 points)
Movie.destroy_all
Person.destroy_all
Role.destroy_all

# rails generate model Movie
# rails generate model Person
# rails generate model Role

#rails db:migrate

# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids and
#   delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)


attributes = {
  name: "Christopher Nolan"
}
person1 = Person.new(attributes)
person1.save

attributes = {
  name: "Christian Bale"
}
person1 = Person.new(attributes)
person1.save

attributes = {
  name: "Michael Caine"
}
person1 = Person.new(attributes)
person1.save

attributes = {
  name: "Liam Neeson"
}
person1 = Person.new(attributes)
person1.save

attributes = {
  name: "Katie Holmes"
}
person1 = Person.new(attributes)
person1.save

attributes = {
  name: "Gary Oldman"
}
person1 = Person.new(attributes)
person1.save

attributes = {
  name: "Heath Ledger"
}
person1 = Person.new(attributes)
person1.save

attributes = {
  name: "Aaron Eckhart"
}
person1 = Person.new(attributes)
person1.save

attributes = {
  name: "Maggie Gyllenhaal"
}
person1 = Person.new(attributes)
person1.save


attributes = {
  name: "Tom Hardy"
}
person1 = Person.new(attributes)
person1.save

attributes = {
  name: "Joseph Gordon-Levitt"
}
person1 = Person.new(attributes)
person1.save

attributes = {
  name: "Anne Hathaway"
}
person1 = Person.new(attributes)
person1.save

person = Person.where({ name: "Christopher Nolan"})[0]
attributes = {
  title: "Batman Begins",
  year_released: 2005,
  rated: "PG-13",
  person_id: person.id
}
batman1 = Movie.new(attributes)
batman1.save

attributes2 = {
  title: "The Dark Knight",
  year_released: 2008,
  rated: "PG-13",
  person_id: person.id
}
batman2 = Movie.new(attributes2)
batman2.save

attributes3 = {
  title: "The Dark Knight Rises",
  year_released: 2012,
  rated: "PG-13",
  person_id: person.id
}
batman3 = Movie.new(attributes3)
batman3.save



#person = Person.where({ name: "Christopher Nolan"})[0]
attributes = {
    movie_id: Movie.where({ title: "Batman Begins"})[0].id,
    person_id: 2,
    character_name: "Bruce Wayne"
}
role1 = Role.new(attributes)
role1.save

attributes = {
    movie_id: Movie.where({ title: "Batman Begins"})[0].id,
    person_id: 3,
    character_name: "Alfred"
}
role1 = Role.new(attributes)
role1.save

attributes = {
    movie_id: Movie.where({ title: "Batman Begins"})[0].id,
    person_id: 4,
    character_name: "Ra's Al Ghul"
}
role1 = Role.new(attributes)
role1.save

attributes = {
    movie_id: Movie.where({ title: "Batman Begins"})[0].id,
    person_id: 5,
    character_name: "Rachel Dawes"
}
role1 = Role.new(attributes)
role1.save

attributes = {
    movie_id: Movie.where({ title: "Batman Begins"})[0].id,
    person_id: 6,
    character_name: "Commissioner Gordon"
}
role1 = Role.new(attributes)
role1.save

attributes = {
    movie_id: Movie.where({ title: "The Dark Knight"})[0].id,
    person_id: 2,
    character_name: "Bruce Wayne"
}
role1 = Role.new(attributes)
role1.save

attributes = {
    movie_id: Movie.where({ title: "The Dark Knight"})[0].id,
    person_id: 3,
    character_name: "Alfred"
}
role1 = Role.new(attributes)
role1.save


attributes = {
    movie_id: Movie.where({ title: "The Dark Knight"})[0].id,
    person_id: 9,
    character_name: "Rachel Dawes"
}
role1 = Role.new(attributes)
role1.save

attributes = {
    movie_id: Movie.where({ title: "The Dark Knight"})[0].id,
    person_id: 7,
    character_name: "Joker"
}
role1 = Role.new(attributes)
role1.save

attributes = {
    movie_id: Movie.where({ title: "The Dark Knight"})[0].id,
    person_id: 8,
    character_name: "Harvey Dent"
}
role1 = Role.new(attributes)
role1.save

attributes = {
    movie_id: Movie.where({ title: "The Dark Knight Rises"})[0].id,
    person_id: 2,
    character_name: "Bruce Wayne"
}
role1 = Role.new(attributes)
role1.save

attributes = {
    movie_id: Movie.where({ title: "The Dark Knight Rises"})[0].id,
    person_id: 6,
    character_name: "Commissioner Gordon"
}
role1 = Role.new(attributes)
role1.save

attributes = {
    movie_id: Movie.where({ title: "The Dark Knight Rises"})[0].id,
    person_id: 10,
    character_name: "Bane"
}
role1 = Role.new(attributes)
role1.save

attributes = {
    movie_id: Movie.where({ title: "The Dark Knight Rises"})[0].id,
    person_id: 11,
    character_name: "John Blake"
}
role1 = Role.new(attributes)
role1.save

attributes = {
    movie_id: Movie.where({ title: "The Dark Knight Rises"})[0].id,
    person_id: 12,
    character_name: "Selina Kyle"
}
role1 = Role.new(attributes)
role1.save

p Movie.all.count
p Person.all.count
p Role.all.count

p Movie.all
# - Query the data and loop through it to display output similar to the following
#   sample "report". (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time, before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Christopher Nolan
# The Dark Knight        2008           PG-13  Christopher Nolan
# The Dark Knight Rises  2012           PG-13  Christopher Nolan

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

# Generate models and tables, according to the domain model
# TODO!

# Insert data into your database that reflects the sample data shown above
# Do not use hard-coded foreign key IDs.
# TODO!

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

movies = Movie.all

for movie in movies
    person = movie.person
    puts "#{movie.title} - #{movie.year_released} - #{movie.rated} - #{person.name}"
end

roles = Role.all

for role in roles
  movie = Movie.where({ id: role.movie_id})[0].id
  person = Person.where({id: role.person_id})[0].id
  puts "#{movie.title} - #{person.name}  - #{role.character_name}"
end

# puts "Contacts: #{Contact.all.count}"
# contacts = Contact.all
# for contact in contacts
#     # company = Company.where(id: contact.company_id)[0]
#     company = contact.company
#     puts "#{contact.first_name} #{contact.last_name} - #{contact.email} - #{company.name}"
# end
# Query the movies data and loop through the results to display the movies output
# TODO!

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie
# TODO!
