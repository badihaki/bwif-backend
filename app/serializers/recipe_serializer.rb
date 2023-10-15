class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :dessert_id
end
