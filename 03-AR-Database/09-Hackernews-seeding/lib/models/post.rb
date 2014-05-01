class Post < ActiveRecord::Base
  belongs_to :user

  def to_s
      "#{self.name}, #{self.date}, #{self.source_url}, #{self.rating}, #{self.user_id}"
  end
end