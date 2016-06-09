class Otype < ActiveRecord::Base
  has_many :qualities
  has_many :products, through: :qualities

  has_many :ovalues
end
