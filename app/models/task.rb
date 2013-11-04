class Task < ActiveRecord::Base
  attr_accessible :complete, :title
  belongs_to :goalset

end
