class SlideshowImage < ActiveRecord::Base
  
  has_attached_file :slide, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
end
