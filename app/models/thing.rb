class Thing < ActiveRecord::Base
  belongs_to :user
  geocoded_by :address
  after_validation :geocode

  def address
  [street, city, state, zip_code].compact.join(', ')
  end

end
