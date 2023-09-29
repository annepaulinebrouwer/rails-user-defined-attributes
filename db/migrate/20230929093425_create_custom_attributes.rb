class CreateCustomAttributes < ActiveRecord::Migration[7.0]
  def change
    create_table :custom_attributes do |t|
      t.string :key
      t.string :value
      t.references :attribute_of, polymorphic: true, null: false

      t.timestamps
    end
  end
end
