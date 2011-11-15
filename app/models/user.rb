class User < ActiveRecord::Base
  has_many :events
  has_one :userfriend
end
