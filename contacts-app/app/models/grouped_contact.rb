class GroupedContact < ApplicationRecord
	belongs_to :group
	belongs_to :contact
end
