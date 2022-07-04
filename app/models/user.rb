class User < ApplicationRecord
  validates :username, presence: true
  validates :email, presence: { message: 'email must be present' }
  validates :bio, presence: true
  validates_uniqueness_of :id
  validates :username, uniqueness: { message: 'must be unique' }
  validates :email, uniqueness: { case_sensitive: false,
                                  message: 'must be unique' }
end
