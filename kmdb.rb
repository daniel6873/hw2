# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

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

Studio.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all

puts "Studios: #{Studio.all.count}"
puts "Movies: #{Movie.all.count}"
puts "Actors: #{Actor.all.count}"
puts "Roles: #{Role.all.count}"

# Generate models and tables, according to the domain model.
# TODO!

#This has been done in the 4 files within the migrate folder


# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

studio1 = Studio.new
studio1["name"]="Warner Bros."
studio1.save

movie1 = Movie.new
movie1["title"]="Batman Begins"
movie1["year_released"]=2005
movie1["rated"]="PG-13"
movie1["Studio_ID"]=studio1.id
movie1.save

movie2 = Movie.new
movie2["title"]="The Dark Knight"
movie2["year_released"]=2008
movie2["rated"]="PG-13"
movie2["Studio_ID"]=studio1.id
movie2.save

movie3 = Movie.new
movie3["title"]="The Dark Knight Rises"
movie3["year_released"]=2012
movie3["rated"]="PG-13"
movie3["Studio_ID"]=studio1.id
movie3.save


#Batman Begins Actors

actor1 = Actor.new
actor1["name"]="Christian Bale"
actor1.save

actor2 = Actor.new
actor2["name"]="Michael Caine"
actor2.save

actor3 = Actor.new
actor3["name"]="Liam Neeson"
actor3.save

actor4 = Actor.new
actor4["name"]="Katie Holmes"
actor4.save

actor5 = Actor.new
actor5["name"]="Gary Oldman"
actor5.save

#Batman Begins Roles

role1 = Role.new
role1["Movie_ID"]=movie1.id
role1["Actor_ID"]=actor1.id
role1["Character_Name"]="Bruce Wayne"
role1.save

role2 = Role.new
role2["Movie_ID"]=movie1.id
role2["Actor_ID"]=actor2.id
role2["Character_Name"]="Alfred"
role2.save

role3 = Role.new
role3["Movie_ID"]=movie1.id
role3["Actor_ID"]=actor3.id
role3["Character_Name"]="Ra's Al Ghul"
role3.save

role4 = Role.new
role4["Movie_ID"]=movie1.id
role4["Actor_ID"]=actor4.id
role4["Character_Name"]="Rachel Dawes"
role4.save

role5 = Role.new
role5["Movie_ID"]=movie1.id
role5["Actor_ID"]=actor5.id
role5["Character_Name"]="Commissioner Gordon"
role5.save

#The Dark Knight Actors Included

actor6 = Actor.new
actor6["name"]="Heath Ledger"
actor6.save

actor7 = Actor.new
actor7["name"]="Aaron Eckhart"
actor7.save

actor8 = Actor.new
actor8["name"]="Maggie Gyllenhaal"
actor8.save

#The Dark Knight roles

role6 = Role.new
role6["Movie_ID"]=movie2.id
role6["Actor_ID"]=actor1.id
role6["Character_Name"]=role1.Character_Name
role6.save

role7 = Role.new
role7["Movie_ID"]=movie2.id
role7["Actor_ID"]=actor6.id
role7["Character_Name"]="Joker"
role7.save

role8 = Role.new
role8["Movie_ID"]=movie2.id
role8["Actor_ID"]=actor7.id
role8["Character_Name"]="Harvey Dent"
role8.save

role9 = Role.new
role9["Movie_ID"]=movie2.id
role9["Actor_ID"]=actor2.id
role9["Character_Name"]=role2.Character_Name
role9.save

role10 = Role.new
role10["Movie_ID"]=movie2.id
role10["Actor_ID"]=actor8.id
role10["Character_Name"]="Rachel Dawes"
role10.save

#The Dark Knight Rises Actors

actor9 = Actor.new
actor9["name"]="Tom Hardy"
actor9.save

actor10 = Actor.new
actor10["name"]="Joseph Gordon-Levitt"
actor10.save

actor11 = Actor.new
actor11["name"]="Anne Hathaway"
actor11.save

#The Dark Knight Rises Roles List

role11 = Role.new
role11["Movie_ID"]=movie3.id
role11["Actor_ID"]=actor1.id
role11["Character_Name"]=role1.Character_Name
role11.save

role12 = Role.new
role12["Movie_ID"]=movie3.id
role12["Actor_ID"]=actor5.id
role12["Character_Name"]=role5.Character_Name
role12.save

role13 = Role.new
role13["Movie_ID"]=movie3.id
role13["Actor_ID"]=actor9.id
role13["Character_Name"]="Bane"
role13.save

role14 = Role.new
role14["Movie_ID"]=movie3.id
role14["Actor_ID"]=actor10.id
role14["Character_Name"]="John Blake"
role14.save

role15 = Role.new
role15["Movie_ID"]=movie3.id
role15["Actor_ID"]=actor11.id
role15["Character_Name"]="Selina Kyle"
role15.save


# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

movieindex=0
moviearray = [movie1,movie2,movie3]
loop do
    if movieindex==3
        break
    end

    movietitle=moviearray[movieindex].title
    puts "#{movietitle}"

    movieindex=movieindex + 1

end


# Query the movies data and loop through the results to display the movies output.
# TODO!

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!
