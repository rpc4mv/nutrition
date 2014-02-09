class NutritionData < ActiveRecord::Base

  belongs_to :nutrient_definition, foreign_key: :nutr_no
  has_one :food_description

  def self.primary_key
    "ndb_no"
  end
end