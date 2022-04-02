class AddScreenNameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :screen_name, :text
  end
end
