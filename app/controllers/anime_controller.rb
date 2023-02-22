class AnimeController < ApplicationController
  before_action :get_collection, except: [:index, :show, :anime_add_folder]

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

  def create
    # anime = @collection.anime.create(anime_params)

    # if anime.save
    #   redirect_to landing_page_path 
    # else
    #   redirect_to show_anime_path(anime['id'])
    # end
    anime = @collection.anime.create(anime_id: params[:anime_id])

    if anime.save
      redirect_to landing_page_path
    else
      redirect_to show_anime_path(anime['id'])
    end
  end

  def anime_add_folder
    @collections = current_user.collections.all
    @anime_id = params[:anime_id]
  end

  private 

  def get_collection
    @collection = Collection.find(params[:collection_id])
    
  end

  # def anime_params
  #   params.permit(:url)
  # end

end