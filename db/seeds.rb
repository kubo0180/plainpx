# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
Px.delete_all
Px.create(
  title: 'Magic gate', 
    user_name: 'Tom', 
      image_url: 'img01.jpg', 
        description: %{This is sample composition of framing.
          Its good using Natural Frame. }, 
            latitude: 0, 
              longitude: 0, 
                gmaps: true
                )
Px.create(
  title: 'Man in the beach', 
    user_name: 'Nick', 
      image_url: 'img02.jpg', 
        description: %{This is a good example for point of eyes.}, 
          latitude: 0, 
            longitude: 0, 
              gmaps: true
              )
Px.create(
  title: 'Statue of liberty is only one', 
    user_name: 'Tom', 
      image_url: 'img03.jpg', 
        description: %{The 1 borad cut the frame of statue.}, 
          latitude: 0, 
            longitude: 0, 
              gmaps: true
              )
Px.create(
  title: 'Rainy day', 
    user_name: 'Jeff', 
      image_url: 'img04.jpg', 
        description: %{Moisture bead is make scene of rainy day.}, 
          latitude: 0, 
            longitude: 0, 
              gmaps: true
              )
Px.create(
  title: 'Ball building', 
    user_name: 'Chris', 
      image_url: 'img05.jpg', 
        description: %{Ball shaped building looks like a soccer ball.}, 
          latitude: 0, 
            longitude: 0, 
              gmaps: true
              )
Px.create(
  title: 'Super car', 
    user_name: 'Andy', 
      image_url: 'img06.jpg', 
        description: %{I'm just holding a Toy car. But it looks like real thing.}, 
          latitude: 0, 
            longitude: 0, 
              gmaps: true
              )
Px.create(
  title: 'Artifical bottled flower', 
    user_name: 'Tom', 
      image_url: 'img07.jpg', 
        description: %{Street lamp looks like flashing flower.}, 
          latitude: 0, 
            longitude: 0, 
              gmaps: true
              )
