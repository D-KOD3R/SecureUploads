class CreateTinyUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :tiny_urls do |t|
      t.string :url
      t.string :slug

      t.timestamps
    end
  end
end
