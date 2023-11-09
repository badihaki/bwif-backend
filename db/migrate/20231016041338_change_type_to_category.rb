class ChangeTypeToCategory < ActiveRecord::Migration[7.0]
  def change
    rename_column :desserts, :type, :category
  end
end
