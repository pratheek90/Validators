class DateOrderValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)


    if !value.blank? and value < record[options[:must_be_after]]
      record.errors[attribute] << (options[:message] || "should be dated before Start date")
	end
  end
end
