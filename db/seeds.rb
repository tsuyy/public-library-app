# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Library.create({ name: 'SFPL', location: 'San Francisco, CA', image: 'https://lh4.ggpht.com/0291-NCWWrNDidM1HjET3mlieGC9kCoKrDqX8Zaz0GBj4sGKP3U43Ia_G6BLJmnjqREV=w300'})
Library.create({ name: 'LAPL', location: 'Los Angeles, CA', image: 'https://pbs.twimg.com/profile_images/443132209008885760/Y4CzVzdS.png'})
Library.create({ name: 'NYPL', location: 'New York, NY', image: 'http://2.bp.blogspot.com/-U6MddjKLVt8/TtaU25HMwjI/AAAAAAAACXg/WSDER4OA0Zo/s1600/new-york-public-library-new-logo2.jpg'})
Library.create({ name: 'SPL', location: 'Seattle, WA', image: 'https://media.glassdoor.com/sqll/146797/seattle-public-library-squarelogo.png'})
Library.create({ name: 'CPL', location: 'Chicago, IL', image: 'https://s-media-cache-ak0.pinimg.com/originals/7d/b4/a0/7db4a05ef759a0060e8668a4317d5005.jpg'})
