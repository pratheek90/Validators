class DateValidator < ActiveModel::Validator

def validate(record)
	
	if !record.end_date.blank? and record.end_date < record.start_date
      record.errors[:end_date] << (options[:message] || "should be dated after Start date") 
    end
  end

end