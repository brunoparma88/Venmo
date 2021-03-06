class CreateFriendship < ActiveRecord::Migration[6.1]
  def change
    create_table :friendships do |t|
      t.belongs_to   :user
      t.belongs_to   :friend, class_name: 'User'
      t.timestamps
    end
  end
end
