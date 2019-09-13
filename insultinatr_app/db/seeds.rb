# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Swear.destroy_all
User.destroy_all


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
    chesticle
    chode
    clusterfuck
    cockburger
    cockhead
    cockjockey
    cocknoker
    cockmongler
    cockwaffle
    dick
    dickbag
    dickbeaters
    dickface
    dickwad
    dickweasel
    dickweed
    dipshit
    douchewaffle
    dumbass
    dumbfuck
    dumbshit
    fuckhead
    fuckface
    fucknut
    fuckstick
    fuctard
    fuckup
    fuckwad
    fuckwit
    jackass
    lameass
    pecker
    peckerhead
    penis
    penishead
    polesmoker
    prick
    schlong
    shit
    shitbag
    shit-for-brains
    shithead
    shithole
    shitstain
    skank
    slut
    twat
    twatwaffle
]

swear_words.each do |word|
    Swear.create(word: word)
end