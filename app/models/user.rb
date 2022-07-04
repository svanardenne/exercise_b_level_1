class User < ApplicationRecord
  validates :username, presence: true
  validates :email, presence: true
  validates :bio, presence: true
  validates_uniqueness_of :id
  validates :username, uniqueness: { message: 'username must be unique' }
  validates :email, uniqueness: { case_sensitive: false,
                                  message: 'email must be unique' }
end
