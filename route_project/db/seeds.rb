# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all


user_1 = User.create(username: 'coolist_art_fan96') 
user_2 = User.create(username: 'Pat_da_best_artist007') 
user_3 = User.create(username: 'artguy95')

art_1 = Artwork.create(title: 'Da Vinci 2.0', image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRWMWj59YNqOVri_vqMcPn4b1m4s5btf__Cq7YyTahGQBb2oR0zw', artist_id: user_1.id)
art_2 = Artwork.create(title: 'Bold And Brash', image_url: 'https://media.karousell.com/media/photos/products/2018/10/15/handsome_squidward_acrylic_painting_1539593151_28656338.jpg', artist_id: user_2.id)
art_3 = Artwork.create(title: 'Leaning Tower of PISA', image_url: 'https://comps.gograph.com/doodle-leaning-tower-of-pisa_gg76508296.jpg', artist_id: user_3.id)

share_1 = ArtworkShare.create(artwork_id: art_1.id, viewer_id: user_3.id)
share_2 = ArtworkShare.create(artwork_id: art_2.id, viewer_id: user_1.id)
share_3 = ArtworkShare.create(artwork_id: art_3.id, viewer_id: user_2.id)