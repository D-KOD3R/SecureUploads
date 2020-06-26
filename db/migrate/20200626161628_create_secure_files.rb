class CreateSecureFiles < ActiveRecord::Migration[5.1]
  def change
    create_table :secure_files do |t|
      t.string :name
      t.string :attachment
      t.string :guid
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :secure_files, :guid, unique: true
  end
end
