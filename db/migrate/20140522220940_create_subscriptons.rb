class CreateSubscriptons < ActiveRecord::Migration
  def change
    create_table :subscriptons do |t|
      t.integer :book_id
      t.integer :subscriber_id
      t.integer :length

      t.timestamps
    end
  end
end
