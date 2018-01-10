class CreateDestination < ActiveRecord::Migration[5.1]
  def change
    create_table :destinations do |t|
      t.string :name
      t.float :x
      t.float :y
      t.float :coeff_touristic
    end
  end
end
