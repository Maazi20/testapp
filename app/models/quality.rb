class Quality < ActiveRecord::Base
  belongs_to :product
  belongs_to :otype
end
