class MangaController < ApplicationController
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

    end
end
