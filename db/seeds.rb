# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

team1 = Team.create(name: "Team A")
team2 = Team.create(name: "Team B")

# Create Members
member1 = Member.create(first_name: "John", last_name: "Doe", city: "New York", state: "NY", country: "USA", team: team1)
member2 = Member.create(first_name: "Alice", last_name: "Smith", city: "Los Angeles", state: "CA", country: "USA", team: team2)
member3 = Member.create(first_name: "Bob", last_name: "Johnson", city: "Chicago", state: "IL", country: "USA", team: team1)

# Create Projects
project1 = Project.create(name: "Project X")
project2 = Project.create(name: "Project Y")

# Associate Members with Projects
member1.projects << project1
member2.projects << project1
member2.projects << project2
member3.projects << project2