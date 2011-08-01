class Page < ActiveRecord::Base
  
  has_attached_file :page_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
  validates_presence_of :title, :on => :create, :message => "can't be blank"
  
  has_friendly_id :title, :use_slug => true, :allow_nil => true
  
end
