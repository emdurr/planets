class Moon < ApplicationRecord
	validates_presence_of :name
	belongs_to :planet
end
