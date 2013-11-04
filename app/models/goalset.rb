class Goalset < ActiveRecord::Base
  attr_accessible :complete, :target_date, :title
  has_many :tasks
  accepts_nested_attributes_for :tasks
  attr_accessible :tasks

end
