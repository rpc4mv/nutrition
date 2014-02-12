class SourceCode < ActiveRecord::Base
  has_many :nutrition_data, foreign_key: "source_code"
end