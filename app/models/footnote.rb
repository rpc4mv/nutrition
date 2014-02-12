class Footnote < ActiveRecord::Base
  belongs_to :food_description, foreign_key: "ndb_no"
  belongs_to :nutrition_datum, foreign_key: "ndb_no"
  belongs_to :nutrient_definition, foreign_key: "nutr_no"
end