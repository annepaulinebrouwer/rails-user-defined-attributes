class SetNullConstraintKeyValueOfCustomAttributes < ActiveRecord::Migration[7.0]
  def change
    change_column_null :custom_attributes, :key, false
    change_column_null :custom_attributes, :value, false
  end
end
