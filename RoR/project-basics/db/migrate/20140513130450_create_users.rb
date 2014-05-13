class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :picture_url
      t.text :description

      t.timestamps
    end
  end
end
