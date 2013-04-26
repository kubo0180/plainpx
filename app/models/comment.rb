class Comment < ActiveRecord::Base
  belongs_to :px
  attr_accessible :body, :commenter
end
