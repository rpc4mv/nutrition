class DataSourceLink < ActiveRecord::Base

  belongs_to :nutrition_datum, foreign_key: "ndb_no"
  belongs_to :data_source, foreign_key: "data_source_id"

end
