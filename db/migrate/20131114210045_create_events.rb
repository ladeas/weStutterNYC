class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.string :venue
      t.string :address
      t.string :cost
      t.string :name
      t.text :details # i changed this from string to text #
      t.string :type

      t.timestamps
    end
  end
end
