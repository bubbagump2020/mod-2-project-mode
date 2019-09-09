# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Swear.destroy_all

swear_words = %w[
    ass
    assclown
    asshat
    asshole
    asslicker
    asswad
    asswipe
    bastard
    bitch
    bitchtits
    bitchy
    bollocks
    boner
    bullshit
    buttpirate
    buttfucker
]

swear_words.each do |word|
    Swear.create(word: word)
end