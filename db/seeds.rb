# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@bach1 = Bachelorette.create!(name: "Michelle Young", season_number: 18, description: "Who will be the lucky guy?")
  @bach2 = Bachelorette.create!(name: "Hannah Brown", season_number: 15, description: "The most thrilling season yet!")
  @bach3 = Bachelorette.create!(name: "Rachel Lindsay", season_number: 13, description: "A nail biter")

  @cont1 = @bach1.contestants.create!(name: "Brandon Jones", age: 26, hometown: "Portland, Oregon")
  @cont2 = @bach1.contestants.create!(name: "Rick Leach", age: 32, hometown: "Munroe Falls, Ohio")
  @cont3 = @bach2.contestants.create!(name: "Jed Wyatt", age: 2, hometown: "Sevierville, Tennessee")
  @cont4 = @bach2.contestants.create!(name: "Mike Johnson", age: 31, hometown: "San Antonio, Texas")
  @cont5 = @bach2.contestants.create!(name: "Devin Harris", age: 27, hometown: "Sherman Oaks, California")
  @cont6 = @bach2.contestants.create!(name: "Hunter Jones", age: 24, hometown: "Westchester, California")
  @cont7 = @bach3.contestants.create!(name: "Lee Garrett", age: 30, hometown: "Jacksonville, Florida")
  @cont8 = @bach3.contestants.create!(name: "Fred Johnson", age: 27, hometown: "Dallas, Texas")
  @cont9 = @bach3.contestants.create!(name: "Rob Howard", age: 30, hometown: "Calgary, Alberta")

  @out1 = Outing.create!(name: "Skiing", location: "Keystone Mountain", date: '12/12/2020')
  @out2 = Outing.create!(name: "Helicopter Ride", location: "Yosemite", date: '06/12/2020')
  @out3 = Outing.create!(name: "Mountain Biking", location: "Moab", date: '10/10/2020')
  @out4 = Outing.create!(name: "Snorkeling", location: "Bahamas", date: '06/22/2020')
  @out5 = Outing.create!(name: "Cooking Lesson", location: "Le Cordon Bleu", date: '01/01/2021')

  ContestantOuting.create!(contestant: @cont1, outing: @out1)
  ContestantOuting.create!(contestant: @cont1, outing: @out3)
  ContestantOuting.create!(contestant: @cont2, outing: @out2)
  ContestantOuting.create!(contestant: @cont3, outing: @out3)
  ContestantOuting.create!(contestant: @cont4, outing: @out4)
  ContestantOuting.create!(contestant: @cont5, outing: @out5)
  ContestantOuting.create!(contestant: @cont6, outing: @out1)
  ContestantOuting.create!(contestant: @cont7, outing: @out2)
  ContestantOuting.create!(contestant: @cont8, outing: @out3)
  ContestantOuting.create!(contestant: @cont9, outing: @out4)