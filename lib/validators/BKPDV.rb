class DateValidator < ActiveModel::Validator

def validate(record)
		

	#if !record.end_date.blank? and record.end_date < record.start_date
     # record.errors[:end_date] << (options[:message] || "should be dated after Start date") 
    #end

    puts "*****************"
    puts record[options[:start_date]]
    puts record[options[:end_date]]
    puts "*****************"

    if record[options[:start_date]] < record[options[:end_date]]
       record.errors[:end_date] << (options[:message] || "should be dated after Start date") 
	end

end

end