# README

## Summary
<pre>
  This Rails applications provide a solution to enable partner organisations to set their own defined
  attributes for a specific model. This logic is encapsulated in a Concern, making it possible to include
  this logic in multiple models. The custom attributes are stored in a CustomAttributes table, that is
  set up as an polymorphic associacion with the other models. The CustomAttributes table has a key column
  referring to the attribute name and a value column where the attribute value will be stored. Two
  specific metods are defined to easily set and get custom attributes
</pre>

## Setup
1. Clone the repository.
2. Run `bundle install` for dependencies.
3. Run `rails db:migrate` to set up the database (SQLite).
4. Run `rails db:seed` to take a look at an example.
4. Use `rails console` to play with the models and add custom attributes.

## Usage
```ruby
b = Battery.create
b.set_custom_attribute(:capacity, "2500")
b.get_custom_attribute(:capacity)
