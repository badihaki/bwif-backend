class Dessert < ApplicationRecord

    # associations
    has_and_belongs_to_many :ingredients

    # validations

end
