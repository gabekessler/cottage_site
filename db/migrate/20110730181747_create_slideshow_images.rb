class CreateSlideshowImages < ActiveRecord::Migration
  def self.up
    create_table :slideshow_images do |t|
      t.string :slide_file_name
      t.string :slide_content_type
      t.integer :slide_file_size
      t.datetime :slide_updated_at
      t.string :caption
      t.string :slide_link

      t.timestamps
    end
  end

  def self.down
    drop_table :slideshow_images
  end
end
