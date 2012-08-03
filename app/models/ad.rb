class Ad < ActiveRecord::Base

include ActiveModel::Validations

	attr_accessible :end_date, :name, :start_date

	validates :name, :presence => "true"
	validates :start_date, :presence => "true"
	validates :end_date, :presence => "true" , :date_order => {:must_be_after => :start_date}

end

