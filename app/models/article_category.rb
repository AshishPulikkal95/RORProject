class ArticleCategory < ActiveRecord::Base
   # has_many :article
  #  has_many :category
    belongs_to :article
    belongs_to :category
end