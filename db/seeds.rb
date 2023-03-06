puts "🌱 Seeding spices..."

# Seed your database here

#create artist instances
a1 = Artist.create(
 artist_name: "Queen Bee",
 song_name:  "Drunk in love" ,
 genre: "soul music"
 producers_id: p1.id
)

#create producer instances
p1 = Producer.create(
 producer_name: "Metro Booming",
 song_name: "Running"
)

#create song instances
s1 = Song.create(
song_name: "lock on me",
artist_id: a1.id,
producers_id: p1.id
)

puts "✅ Done seeding!"

