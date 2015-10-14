class Destination < ActiveRecord::Base
  include PgSearch
  pg_search_scope :search_by_info, :against => [:activities]
end
