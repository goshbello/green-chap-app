class User < ApplicationRecord

  has_secure_password

  has_many :messages

  validates :username, presence: true, 
            length: { minimun: 3, maximum: 15}, 
            uniqueness: { case_sensitive: false }
  validates :password, presence: true



end