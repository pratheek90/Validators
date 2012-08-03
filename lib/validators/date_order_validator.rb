class DateOrderValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)

    if !value.blank? and value < record[options[:must_be_after]]
      record.errors.add(attribute, :invalid_date)
		elsif value == record[options[:must_be_after]]
			record.errors.add(attribute, :invalid_date)
    end
  

  end
end
