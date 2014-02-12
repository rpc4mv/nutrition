class FoodGroup < ActiveRecord::Base
  belongs_to :food_description, foreign_key: "food_group_code"
end