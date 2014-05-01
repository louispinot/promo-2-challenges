class User < ActiveRecord::Base
  has_many :posts

  def to_s
    "#{self.name} (#{self.email})"
  end
end