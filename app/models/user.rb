class User < ApplicationRecord
  validates :username, presence: true
  validates :email, presence: true
  validates :bio, presence: true
  validates_uniqueness_of :id
  validates_uniqueness_of :username
  validates :email,
            format: { uniqueness: { case_sensitive: false } }
end
