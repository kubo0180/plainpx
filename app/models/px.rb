class Px < ActiveRecord::Base
  attr_accessible :description, :gmaps, :image_url, :latitude, :longitude, :title, :user_name, :image
  has_many :comments
  
  validate :title,  :user_name, presence: true
  validates :image_url,   allow_blank: true, format: {
            with: %r{\.(gif|jpg|png)$}i, 
            message: 'is not image file. Please set the image file.'
  }

  has_attached_file :image, 
    styles: { square: '220x220#', medium: '480x480>'},
    :default_url => "/images/:style/missing.png"
end
