class Manga < ApplicationRecord
  belongs_to :collection
  has_many :posts

  before_commit :save_manga_details, on: [:create]

  private

  def save_manga_details
    response = Kitsu::Api.fetch_manga_detail(manga_id)
    manga = response['data']

    self.title = manga['attributes']['canonicalTitle']
    self.poster = manga['attributes']['posterImage']['small']
    self.chapterCount = manga['attributes']['chapterCount']
    self.status = manga['attributes']['status']
    self.startDate = manga['attributes']['startDate']
  end
    
end
