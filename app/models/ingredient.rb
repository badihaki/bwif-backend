class Ingredient < ApplicationRecord

    # associations
    has_and_belongs_to_many :desserts

end
