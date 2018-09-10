class CreateUserStocks < ActiveRecord::Migration
  def change
    create_table :user_stocks do |t|
      t.references :user, index: true
      t.references :stock, index: true

      t.timestamps
    end
  end
end
