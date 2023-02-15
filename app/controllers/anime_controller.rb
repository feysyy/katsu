class AnimeController < ApplicationController
  def index
    page = (params[:page] || 1 ).to_i
    response = Kitsu::Api.fetch_anime(page)
    @anime = response['data']
    @pagination = {
      total_count: response['meta']['count'],
      current_page: page,
      per_page: 20,
      total_page: (response['meta']['count'].to_f / 20 ).ceil
    }
  end

  def show
    response = Kitsu::Api.fetch_single_anime(params[:id])
    @anime = response['data']
  end


end