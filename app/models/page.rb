class Page < ActiveRecord::Base
  has_friendly_id :heading, :use_slug => true, :sequence_separator => "_"
  
  has_attached_file :page_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
end
