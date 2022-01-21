class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.belongs_to   :user
      t.belongs_to   :friend, class_name: 'User'
      t.string       :description,   null: false, default: ''
      t.decimal      :amount, null: false, precision: 10, scale: 2
      t.timestamps
    end
  end
end
