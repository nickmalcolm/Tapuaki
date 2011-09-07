class Appeal < ActiveRecord::Base
  
  has_attached_file :photo, :styles => { :featured => "610x260#", :small => "200x150#" }
  has_many :rewards, :dependent => :destroy
  accepts_nested_attributes_for :rewards, :reject_if => lambda { |r| r[:description].blank? }, :allow_destroy => true
  
end
