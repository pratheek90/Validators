class ChangeStringForAdStartDate < ActiveRecord::Migration
  def up
  	change_table :ads do |t|
     t.change :start_date, :date
     end
  end

  def down
  	change_table :ads do |t|
    t.change :start_date, :string
  	end
  end
end