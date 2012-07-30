class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :name
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
