class Article < ApplicationRecord
    belongs_to :user
    # Validate that user can't save article without a title
    # Enforce minimum length requirements for the fields
    validates :title, presence:true, length: {minimum: 6, maximum: 100 } 
    validates :description, presence:true, length: {minimum: 10, maximum: 100 } 
end
