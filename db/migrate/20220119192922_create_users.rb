class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string   :first_name, null: false, default: ''
      t.string   :last_name,  null: false, default: ''
      t.string   :username,   null: false, default: ''

      t.timestamps
      t.index :username, unique: true
    end
  end
end
