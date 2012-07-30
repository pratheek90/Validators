class Ad < ActiveRecord::Base
  attr_accessible :end_date, :name, :start_date

   	validates :name, :presence => {:message => "not entered!"}
    validates :start_date, :presence => "true"
   	validates :end_date, :presence => "true"

	validate :date_check


def date_check
	errors.add(:start_date, "should be dated before End Date!") unless
	self.start_date < self.end_date
end
	

end