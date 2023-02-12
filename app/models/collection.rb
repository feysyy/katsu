class Collection < ApplicationRecord
  belongs_to :user
  has_many :anime
  has_many :manga
end
