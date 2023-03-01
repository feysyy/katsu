class Post < ApplicationRecord
  belongs_to :user
  
  before_commit :save_anime_id, on: [:create]
# 
  private

  def save_anime_id
    response = Kitsu::Api.fetch_single_anime(anime_id)
    anime = response['data']

    self.anime_id = anime['id']
  end
end
