class Userfriend < ActiveRecord::Base
  has_many :friends
  belongs_to :user
end
