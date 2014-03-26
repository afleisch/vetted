class Thing < ActiveRecord::Base
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  #only use US state abbreviations
  validates_length_of :state, is: 2, :on => :create
  #zip codes have to be 5 digits
  validates_length_of :zip_code, is: 5, :on => :create
  validates :name, :category, :why, :street, :city, :state, :zip_code, presence: true
  has_attached_file :image, styles: {thumb: "60x60#"}
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }
  
  def address
  [street, city, state, zip_code].compact.join(', ')
  end

end
