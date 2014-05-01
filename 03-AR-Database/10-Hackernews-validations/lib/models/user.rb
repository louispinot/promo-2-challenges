class User < ActiveRecord::Base
  has_many :posts
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, format: { with: /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/ }
end