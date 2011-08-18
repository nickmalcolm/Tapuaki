class Request < ActiveRecord::Base
  
  has_attached_file :photo, :styles => { :featured => "610x260#", :small => "200x150#" }
  
end
