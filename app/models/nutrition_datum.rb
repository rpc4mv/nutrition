class NutritionDatum < ActiveRecord::Base

  belongs_to :nutrient_definition, foreign_key: :nutr_no
  belongs_to :food_description, foreign_key: "ndb_no"

end