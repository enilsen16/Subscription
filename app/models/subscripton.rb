class Subscripton < ActiveRecord::Base
  belongs_to :book
  belongs_to :subscriber
end
