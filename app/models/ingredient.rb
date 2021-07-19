class Ingredient < ApplicationRecord
    has_many :recipes, through: :recipe_ingredients
    has_many :recipe_ingredients
    validates :name, presence: true

    def to_s
        self.name
    end
    
end
