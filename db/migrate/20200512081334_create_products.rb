class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.belongs_to :vendor, null: false, foreign_key: true
      t.decimal :list_price
      t.decimal :sell_price
      t.boolean :on_sell, default: false
      t.string :code
      t.datetime :delete_at

      t.timestamps
    end

    add_index :products, :delete_at
    add_index :products, :code, unique: true
  end
end
