class User < ActiveRecord::Base
  #TODO: add associations to the Post model
  has_many :posts
  def to_s
    "#{self.name} (#{self.email})"
  end
end