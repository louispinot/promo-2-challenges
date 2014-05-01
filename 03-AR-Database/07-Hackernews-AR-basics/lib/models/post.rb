class Post < ActiveRecord::Base

    def to_s
      "#{self.name}, #{self.date}, #{self.source_url}, #{self.rating}"
    end
end