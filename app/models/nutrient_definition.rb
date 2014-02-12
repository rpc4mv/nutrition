class NutrientDefinition < ActiveRecord::Base

  has_many :footnotes, foreign_key: "nutr_no"
  belongs_to :nutrition_datum, foreign_key: "nutr_no"

  def self.primary_key
    "nutr_no"
  end
end