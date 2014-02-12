class DataSource < ActiveRecord::Base
  has_many :nutrition_data, through: :data_source_links, foreign_key: "data_source_id"
  has_many :data_source_links, primary_key: "data_source_id"

end