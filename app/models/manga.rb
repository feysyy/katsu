class Manga < ApplicationRecord
  belongs_to :collection
  has_many :posts
end
