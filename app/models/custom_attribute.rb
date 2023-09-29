class CustomAttribute < ApplicationRecord
  belongs_to :attribute_of, polymorphic: true
end
