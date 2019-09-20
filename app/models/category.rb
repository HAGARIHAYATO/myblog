class Category < ApplicationRecord
    has_many :articles
    enum category_status:{ code: 1, life: 2}
    include FriendlyId
        friendly_id :name
end
