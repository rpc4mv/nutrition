class NutrientDefinition < ActiveRecord::Base

  has_many :nutrition_datum
  def self.primary_key
    "nutr_no"
  end
end