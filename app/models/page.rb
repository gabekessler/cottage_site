class Page < ActiveRecord::Base
  has_friendly_id :title, :use_slug => true
  
  has_attached_file :page_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
end
