class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :page_title
      t.text :page_description
      t.string :page_keywords
      t.string :heading
      t.text :body
      t.boolean :sidebar
      t.string :page_image_file_name
      t.string :page_image_content_type
      t.integer :page_image_file_size
      t.datetime :page_image_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
