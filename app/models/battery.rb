class Battery < ApplicationRecord
  has_many :custom_attributes, as: :attribute_of, dependent: :destroy
end
