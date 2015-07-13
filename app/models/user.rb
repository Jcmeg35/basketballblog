class User < ActiveRecord::Base
  validates_presence_of :username, :password;

  validates :password, confirmation: true
  
  validates :username, uniqueness: true

  has_many :posts
  has_many :comments
end
