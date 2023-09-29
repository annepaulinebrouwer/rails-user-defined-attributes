class Battery < ApplicationRecord
  has_many :custom_attributes, as: :attribute_of, dependent: :destroy

  def get_custom_attribute(key)
    custom_attributes.where(key:)&.first&.value
  end

  def set_custom_attribute(key, value)
    custom_attributes.create(key:, value:)
  end
end
