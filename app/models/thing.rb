class Thing < ActiveRecord::Base
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  #only use US state abbreviations
  validates_length_of :state, is: 2, :on => :create
  #zip codes have to be 5 digits if present
  validates_length_of :zip_code, is: 5, :on => :create, :allow_blank => :true
  validates :name, :category, :why, :street, :city, :state, presence: true
  has_attached_file :image, styles: {thumb: "60x60#"}
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }
  
  def address
  [street.titleize, city.titleize, state.upcase, zip_code].compact.join(', ')
  end

end
