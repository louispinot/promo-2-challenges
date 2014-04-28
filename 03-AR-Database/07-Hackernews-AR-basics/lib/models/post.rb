class Post < ActiveRecord::Base

    def to_s
      "#{self.name}, #{self.date}, #{self.source_url}, #{self.1rating}"
    end
end