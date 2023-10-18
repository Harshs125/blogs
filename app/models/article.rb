class Article < ApplicationRecord
    validates :article_title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
end
