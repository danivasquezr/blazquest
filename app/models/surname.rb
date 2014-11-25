class Surname < ActiveRecord::Base
	has_many :shields
	has_many :mottos
	has_many :tartans
end
