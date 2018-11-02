class Article < ActiveRecord::Base
    belongs_to :user
    has_many :article_categories
    has_many :categories, through: :article_categories
    validates :title, presence: true, length: {minimum: 5, maximum: 30} #ensure that the article has some title and it is not null along with a length validation to ensure its not useless title.
    validates :description, presence: true, length: {minimum: 5, maximum: 1000} #ensure that the description has some title and it is not null. Length validations ensures description is not useless.
    validates :user_id, presence: true
end