class CreateSimulations < ActiveRecord::Migration[5.1]
  def change
    create_table :simulations do |t|
      t.float :coeffPeople
      t.flaot :coeffAccomodation
      t.float :coeffGuide
      t.float :coeffFood
      t.float :coeffOut

      t.timestamps
    end
  end
end
