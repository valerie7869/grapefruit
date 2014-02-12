class Package < ActiveRecord::Base
  attr_accessible :name, :notes
  has_many :licenses
end
