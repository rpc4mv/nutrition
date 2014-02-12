class NutritionDatum < ActiveRecord::Base

  has_one :nutrient_definition, foreign_key: "nutr_no"

  belongs_to :food_description, foreign_key: "ndb_no"
  belongs_to :source_code, foreign_key: "source_code"

  has_many :data_sources, through: :data_source_links, foreign_key: "ndb_no"
  has_many :data_source_links, primary_key: "ndb_no"

end