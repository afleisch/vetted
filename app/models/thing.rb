class Thing < ActiveRecord::Base
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  #only use US state abbreviations
  validates_length_of :state, is: 2, :on => :create
  #zip codes have to be 5 digits
  validates_length_of :zip_code, is: 5, :on => :create
  validates :name, :category, :why, :street, :city, :state, :zip_code, presence: true

  def address
  [street, city, state, zip_code].compact.join(', ')
  end

end
