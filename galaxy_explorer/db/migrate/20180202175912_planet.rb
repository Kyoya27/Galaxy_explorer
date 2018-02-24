class Planet < ActiveRecord::Migration[5.1]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :weather
      t.string :description
      t.string :galaxy
    end
  end
end
