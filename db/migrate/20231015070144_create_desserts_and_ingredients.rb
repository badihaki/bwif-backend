class CreateDessertsAndIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :desserts_ingredients, id:false do |t|
      t.belongs_to :dessert
      t.belongs_to :ingredient
    end  
  end
end
