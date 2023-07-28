class AddProfileNameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :profile_name, :string
  end
end
