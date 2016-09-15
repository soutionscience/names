class Attribute < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :african_names
end
