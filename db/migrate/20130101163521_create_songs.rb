class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :attachment, :default => '', :null => false
      t.string :uploader_name, :default => '', :null => false
      t.string :uploader_email, :default => '', :null => false

      t.timestamps
    end
  end
end
