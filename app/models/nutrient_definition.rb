class NutrientDefinition < ActiveRecord::Base

  has_many :nutrition_data, foreign_key: "nutr_no"
  def self.primary_key
    "nutr_no"
  end
end