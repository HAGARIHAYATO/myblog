class Category < ApplicationRecord
    has_many :articles
    include FriendlyId
        friendly_id :name
end
