class Book < ActiveRecord::Base
  has_many :subscriptons
  has_many :subscribers, :through => :subscriptons
end
