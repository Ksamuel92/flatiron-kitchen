class Recipe < ApplicationRecord
    has_many :ingredients, through: :recipe_ingredients
    has_many :recipe_ingredients
    validates :name, presence: true
    accepts_nested_attributes_for :ingredients, reject_if: proc { |attributes| attributes['name'].blank? }

    

    # def ingredients_attributes=(ingredients_attributes)

    # end

    def to_s
        self.name
    end
end
