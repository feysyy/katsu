class Post < ApplicationRecord
  belongs_to :user
  belongs_to :anime
  belongs_to :manga
  has_many :comments
end
