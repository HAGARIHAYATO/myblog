class Comment < ApplicationRecord
	belongs_to :article
	validates :content, presence: true
	validates :name, presence: true
	has_rich_text :content
end
