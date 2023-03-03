class Anime < ApplicationRecord
  belongs_to :collection

  before_commit :save_kitsu_details, on: [:create]

  private

  def save_kitsu_details
    response = Kitsu::Api.fetch_single_anime(anime_id)
    anime = response['data']
    self.title = anime['attributes']['canonicalTitle']
    self.poster = anime['attributes']['posterImage']['small']
    self.description = anime['attributes']['description']
    self.episodes = anime['attributes']['episodeCount']
    self.status = anime['attributes']['status']
    self.startDate = anime['attributes']['startDate']
    self.url = "https://www.youtube.com/watch?v=#{anime['attributes']['youtubeVideoId']}"
  end
end
