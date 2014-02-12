class FoodDescription < ActiveRecord::Base
  attr_accessible  :ndb_no,
                   :long_description, 
                   :short_description, 
                   :common_name,
                   :manufacturer_name,
                   :survey,
                   :refuse_description,
                   :refuse,
                   :scientific_name,
                   :nitrogen_factor,
                   :protein_factor,
                   :fat_factor,
                   :carbohydrate_factor

  has_many :nutrition_data, foreign_key: "ndb_no"
  has_many :weights, foreign_key: "ndb_no"
  has_many :footnotes, foreign_key: "ndb_no"

  has_one :food_group, foreign_key: "food_group_code"

  def self.primary_key
    "ndb_no"
  end
end