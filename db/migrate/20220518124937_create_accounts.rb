class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.integer :age
      t.string :city
      t.string :country
      t.references :supplier, null: false, foreign_key: true
      t.timestamps
    end
  end
end
