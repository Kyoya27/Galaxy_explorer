class Placetobes < ActiveRecord::Migration[5.1]
  def change
    create_table :placetobes do |t|
      t.string :name
      t.float :cost
      t.string :description
      t.integer :mark
    end
  end
end
