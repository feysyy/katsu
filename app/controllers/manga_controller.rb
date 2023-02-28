class MangaController < ApplicationController
    before_action :get_collection, except: [:index, :show, :manga_add_to_folder]


    def index
        page = (params[:page] || 1).to_i
        response = Kitsu::Api.fetch_manga(page)
        @manga = response['data']
        @pagination = {
            total_count: response['meta']['count'],
            current_page: page,
            per_page: 20,
            total_page: (response['meta']['count'].to_f / 20 ).ceil
          }
    end

    def show
        response = Kitsu::Api.fetch_manga_detail(params[:id])
        @manga = response['data']
    end

    def create
        
        manga = @collection.manga.create(manga_id: params[:manga_id])

        if manga.save
            redirect_to landing_page_path
        else
            redirect_to show_manga_path(manga['id'])
        end    
    end

    def manga_add_to_folder
        @collections = current_user.collections.all
        @manga_id = params[:manga_id]
    end

    private

    def get_collection
        @collection = Collection.find(params[:collection_id])
    end
end
    
