class Thing < ActiveRecord::Base
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  #only use US state abbreviations
  validates_length_of :state, is: 2, :on => :create
  #zip codes have to be 5 digits if present
  validates_length_of :zip_code, is: 5, :on => :create, :allow_blank => :true
  validates :name, :category, :why, :street, :city, :state, presence: true

  def address
  [street.titleize, city.titleize, state.upcase, zip_code].compact.join(', ')
  end

end
