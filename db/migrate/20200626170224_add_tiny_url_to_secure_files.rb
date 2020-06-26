class AddTinyUrlToSecureFiles < ActiveRecord::Migration[5.1]
  def change
    add_column :secure_files, :tiny_url, :string
  end
end
