# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

require 'open-uri'

#destroying all of the objects created before
Comment.destroy_all
Review.destroy_all
User.destroy_all
Actor.destroy_all
Director.destroy_all
Movie.destroy_all

# we create every object in order!
puts 'creating users'
userone = User.create(email: 'scan.cimenser@gmail.com', password: '123456')

puts 'creating pictures'
photoone = URL.open('')
phototwo = URL.open('')

puts 'creating videos'
videoone = URL.open('')
videotwo = URL.open('')


puts 'creating actors'
actorone = Actor.create(fullname: 'Ivan Massagué', biography: "Ivan Massagué was born in 1976 in Barcelona, Barcelona, Catalonia, Spain as Iván Massagué Horta. He is an actor, known for Pan's Labyrinth (2006), El hoyo (2019) and El barco (2011).", birthday: '1976', height: '182')

puts 'creating directors'
directorone = Director.create(fullname: 'Galder Gaztelu-Urrutia', biography: 'Galder Gaztelu-Urrutia is a producer and director, known for El hoyo (2019), El ataúd de cristal (2016) and 913 (2004).', birthday: 1974)

puts 'creating comments'
commentone = Comment.create(content: 'briliant, really enjoyed watching', user: userone)

puts 'creating reviews'
reviewone = Review.create(score:5.0, user: userone)

puts 'creating movies'
movieone = Movie.create(title: 'The Platform', imdb_score: 7.0, summary:'A vertical prison with one cell per level. Two people per cell. Only one food platform and two minutes per day to feed. An endless nightmare trapped in The Hole.', genre: 'horror', country: 'Spain', director: directorone, actor: actorone)

puts 'DONE SUCCESFULLY' #should be seen on console after the seeding is done!!

