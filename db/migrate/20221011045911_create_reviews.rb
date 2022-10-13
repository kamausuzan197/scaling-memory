class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :comments
      t.integer :order_number
      t.integer :laundry_id
      t.integer :user_id

      t.timestamps
    end
  end
end
