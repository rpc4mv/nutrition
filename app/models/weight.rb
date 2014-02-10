class Weight < ActiveRecord::Base
  belongs_to :food_description, foreign_key: "ndb_no"
end