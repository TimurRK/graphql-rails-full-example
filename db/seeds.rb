# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Fantasy.delete_all
Fantastic.delete_all
Book.delete_all
User.delete_all

count = 10

(0..count).each do |i|
  u = User.create(lname: i, fname: i)
  (0..count).each do |j|
    if i % 2 == 0
      u.books.create(title: j, bookable: Fantastic.create())
    else
      u.books.create(title: j, bookable: Fantasy.create())
    end
    p "#{i} #{j}"
  end
end