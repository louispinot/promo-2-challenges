class Post < ActiveRecord::Base
  #TODO: add association to the user model
  belongs_to :user

  def to_s
      "#{self.name}, #{self.date}, #{self.source_url}, #{self.rating}"
  end
end