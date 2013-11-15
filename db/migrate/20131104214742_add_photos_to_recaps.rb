class AddPhotosToRecaps < ActiveRecord::Migration
  def change
    add_column :recaps, :photo, :string
  end
end
