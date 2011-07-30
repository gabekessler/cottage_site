class Page < ActiveRecord::Base
  has_friendly_id :heading, :use_slug => true, :sequence_separator => "_"
end
