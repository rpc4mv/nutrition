class DerivationCode < ActiveRecord::Base
  has_many :nutrition_data, foreign_key: "derviation_code"
end