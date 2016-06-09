class Ovalue < ActiveRecord::Base
	has_and_belongs_to_many :variants
	belongs_to :otype
end
