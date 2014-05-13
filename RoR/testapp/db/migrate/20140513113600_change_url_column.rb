class ChangeUrlColumn < ActiveRecord::Migration
  def change
    rename_column(:postcards, :url, :picture_url)

  end
end
