class DateOrderValidator < ActiveModel::EachValidator

def validate_each(record, attribute, value)

if !value.blank? and value < record[options[:begin]]
record.errors[attribute] << (options[:message] || "should be dated before Start date")
end
end
end