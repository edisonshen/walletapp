class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|
      t.integer :category_id
      t.integer :amount

      t.timestamps null: false
    end
  end
end
