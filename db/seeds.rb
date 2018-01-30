10.times do 
  Item.create(
    title: Faker::Commerce.product_name, 
    inventory: Faker::Number.number(2), 
    price: Faker::Number.number(4)
  )
  Category.create(title: Faker::Commerce.department)
end

counter = 1
Item.all.each do |item|
  item.category_id = counter
  item.save
  counter += 1
end

User.create(
  name: "Scott",
  current_cart_id: 2,
  email: "scott@email.com",
  password: "password")
  
  User.create(
  name: "Amy",
  current_cart_id: 3,
  email: "amy@email.com",
  password: "pw")