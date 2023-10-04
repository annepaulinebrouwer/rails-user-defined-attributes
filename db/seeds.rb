puts 'Clean database'
Battery.destroy_all
Customer.destroy_all

puts '-------------'

puts 'Create a battery instance'
b = Battery.create
puts 'Set custom attribute capacity of to 2500 mAh for this battery'
b.set_custom_attribute('capacity', 2500)
puts "The capacity of this battery is: #{b.get_custom_attribute(:capacity)} mAh"

puts '-------------'

puts 'Partner company in Benin creates customer instance'
customer_in_benin = Customer.create
puts 'Partner company in Benin set custom attribute phone for this customer'
customer_in_benin.set_custom_attribute(:phone, '+229123456789')
puts "Phone number of this customer is: #{customer_in_benin.get_custom_attribute(:phone)}"

puts '-------------'

puts 'Partner company in Nigeria creates customer instance'
customer_in_nigeria = Customer.create
puts 'Partner company in Nigeria set custom attribute hometown for this customer'
customer_in_nigeria.set_custom_attribute(:hometown, 'Lagos')
puts "Hometown of this customer is: #{customer_in_nigeria.get_custom_attribute('hometown')}"
puts "Phone number of this customer is: #{customer_in_nigeria.get_custom_attribute('phone')} [nil],
      because this custom attribute is not defined for this customer"

puts '-------------'

puts 'Done'
