class Subscriber < ActiveRecord::Base
  has_many :subscriptons
  has_many :books, :through => :subscriptons
end
