class DateOrderValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)

    if !value.blank? and value < record[options[:must_be_after]]
      record.errors.add(attribute, :date_not_valid)
	end
  end
end
