module AttributeExtendable
  extend ActiveSupport::Concern

  included do
    has_many :custom_attributes, as: :attribute_of, dependent: :destroy

    def get_custom_attribute(key)
      value = custom_attributes.where(key:)&.last&.value
      data_type = custom_attributes.where(key:)&.last&.data_type
      return value if data_type == 'String'

      to_data_type(value, data_type)
    end

    def set_custom_attribute(key, value)
      attr = custom_attributes.find_or_initialize_by(key: key)
      attr.update(value: value.to_s, data_type: value.class)
    end

    def to_data_type(value, data_type)
      case data_type
      when 'Integer'
        value.to_i
      when 'Time'
        value.to_datetime
      when 'TrueClass'
        true
      when 'FalseClass'
        false
      end
    end
  end
end
