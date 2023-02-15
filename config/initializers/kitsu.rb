BASE_URL= 'https://kitsu.io/api/edge'.freeze
HEADERS = { 'Accept' => 'application/vnd.api+json' }.freeze

module Kitsu
  class Api
    ## fetch all anime
    def self.fetch_anime(page = 1)
      response = Faraday.get("#{BASE_URL}/anime?page[limit]=20&page[offset]=#{(page - 1) * 20}", HEADERS)
      JSON.parse(response.body)
    end
     
    ## fetch one anime with corresponding id
    def self.fetch_single_anime(id)
      response = Faraday.get("#{BASE_URL}/anime/#{id}")
      JSON.parse(response.body)
    end
  end
end
