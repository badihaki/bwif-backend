class CreateDesserts < ActiveRecord::Migration[7.0]
  def change
    create_table :desserts do |t|
      t.string :name
      t.string :description
      t.string :type

      t.timestamps
    end
  end
end
