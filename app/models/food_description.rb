class FoodDescription < ActiveRecord::Base
  attr_accessible :long_description, 
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
end