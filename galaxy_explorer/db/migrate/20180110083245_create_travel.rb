class CreateTravel < ActiveRecord::Migration[5.1]
  def change
    create_table :travels do |t|
      t.float :budget_base
      t.float :budget_remaining
    end
  end
end
