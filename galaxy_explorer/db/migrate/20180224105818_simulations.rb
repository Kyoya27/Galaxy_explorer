class Simulations < ActiveRecord::Migration[5.1]
  def change
    create_table :simulations do |t|
      t.float :coeffPeople
      t.float :coeffAccomodation
      t.float :coeffGuide
      t.float :coeffFood
      t.float :coeffOut
    end
  end
end
