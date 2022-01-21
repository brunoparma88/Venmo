class CreateFeeds < ActiveRecord::Migration[6.1]
  def change
    create_table :feeds do |t|
      t.belongs_to   :user
      t.belongs_to   :friend, class_name: 'User'
      t.string       :description,   null: false, default: ''
      t.timestamps
    end
  end
end
