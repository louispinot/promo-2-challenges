class CreatePostcards < ActiveRecord::Migration
  def change
    create_table :postcards do |t|
      t.string :url, default:'http://global3.memecdn.com/lol_o_582604.jpg'
      t.text :message
      t.string :author

      t.timestamps
    end
  end
end
