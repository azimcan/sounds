class Sound < ApplicationRecord
	has_many :comments
	has_many :order_items

	belongs_to :user
end
