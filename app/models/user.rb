class User < ActiveRecord::Base
  include Followable
  
  has_many :shouts

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
end
