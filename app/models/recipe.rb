class Recipe < ApplicationRecord

    # associations
    belongs_to :user
    belongs_to :dessert

end
