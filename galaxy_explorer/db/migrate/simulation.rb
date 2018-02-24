class Simulation < ActiveRecord::Migration[5.1]
  def change
    create_table :simulations do |t|
      t.flaot :coeffPeople
      t.float :coeffAcomodation
      t.float :coeffGuide
      t.float :coeffFood
      t.float :coeffOut
  end
end
