class Tag < ActiveRecord::Base
  acts_as_paranoid
  has_and_belongs_to_many :articles
end
