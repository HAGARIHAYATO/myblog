class Article < ApplicationRecord
	has_rich_text :text
	validates :title, presence: true
	validates :text, presence: true
	# belongs_to :user
	belongs_to :category
	has_many :comments, dependent: :destroy
	enum status:{ drafted: false, published: true }
	def self.search(search)
        if search
            where(['title LIKE ?', "%#{search}%"])
        else
            all
        end
    end
end
