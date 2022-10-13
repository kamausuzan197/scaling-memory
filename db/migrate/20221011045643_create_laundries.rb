class CreateLaundries < ActiveRecord::Migration[7.0]
  def change
    create_table :laundries do |t|
      t.string :title
      t.string :variety
      t.integer :price

      t.timestamps
    end
  end
end
