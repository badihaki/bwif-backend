class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.integer :user_id
      t.integer :dessert_id

      t.timestamps
    end
  end
end
