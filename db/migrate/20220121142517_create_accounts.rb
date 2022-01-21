class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.belongs_to   :user
      t.decimal      :balance, null: false, precision: 10, scale: 2
      t.timestamps
    end
  end
end
