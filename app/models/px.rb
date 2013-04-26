class Px < ActiveRecord::Base
  attr_accessible :description, :gmaps, :image_url, :latitude, :longitude, :title, :user_name
    validate :title,  :image_path, presence: true
    validates :image_path,   allow_blank: true, format: {
              with: %r{\.(gif|jpg|png)$}i, 
              message: 'is not image file. Please set the image file.'
    }
end
