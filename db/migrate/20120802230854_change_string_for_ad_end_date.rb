class ChangeStringForAdEndDate < ActiveRecord::Migration
  def up
  	change_table :ads do |t|
    t.change :end_date, :date
	end
  end

  def down
  	change_table :ads do |t|
    t.change :end_date, :string
  	end
  end
end
