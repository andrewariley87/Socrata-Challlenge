class Destination < ActiveRecord::Base

  def lodging
    self.activities == nil ? self.activities = "lodging" : self.activities
  end

  def category_type
    self.category == "NP" ? self.category = "Nature Preserve" : self.category
  end

  def self.search(search)
    where("activities ILIKE ?", "%#{search}%")
  end

end
