class Destination < ActiveRecord::Base

  def category_type
    self.category == "NP" ? self.category = "Nature Preserve" : self.category
  end

  def self.search(search)
    where("activities ILIKE ?", "%#{search}%")
  end

end
