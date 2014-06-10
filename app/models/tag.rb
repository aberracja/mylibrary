class Tag < ActiveRecord::Base
  
  has_and_belongs_to_many :books
  validates_presence_of :tag, message: "- write name of tag!"
  validates_uniqueness_of :tag, message: "- this tag exists already!"
  
end
