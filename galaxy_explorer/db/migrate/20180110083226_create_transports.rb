class CreateTransports < ActiveRecord::Migration[5.1]
  def change
    create_table :transports do |t|
      t.string :name
      t.float :quality_coeff
      t.float :max_dist
    end
  end
end
