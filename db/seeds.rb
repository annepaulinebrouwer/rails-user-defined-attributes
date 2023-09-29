puts "Clean database"
Battery.destroy_all
Customer.destroy_all

puts "-------------"

puts "Create a battery instance"
b = Battery.create
puts "Set custom attribute capacity of to 2500 mAh for this battery"
b.custom_attributes.create(key: "capacity", value: "2500")

puts "-------------"
puts "Done"
