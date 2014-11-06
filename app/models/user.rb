class User < ActiveRecord::Base
  attr_accessible :address, :comments, :dob, :emailAddr, :firstName, :lastName, :password, :phone, :postcode, :sex, :tnc, :username
  validates_presence_of :username, :password
  validates_uniqueness_of :username
end
