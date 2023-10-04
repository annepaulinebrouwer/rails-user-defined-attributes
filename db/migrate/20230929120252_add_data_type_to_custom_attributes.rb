class AddDataTypeToCustomAttributes < ActiveRecord::Migration[7.0]
  def change
    add_column :custom_attributes, :data_type, :string
  end
end
