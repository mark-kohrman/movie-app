# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
movie = Movie.new(title: 'Joe Dirt', year: 2003, plot: "A man tries to reconnect with his long lost family but and makes some friends along the way")
movie.save

actor = Actor.new(first_name: "Ben", last_name: "Stiller", known_for: "Meet the Parents")
actor.save