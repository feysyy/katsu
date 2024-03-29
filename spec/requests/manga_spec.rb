require 'rails_helper'

RSpec.describe "Mangas", type: :request do
  describe".response" do
    context "when endpoint is /manga" do 
      BASE_URL = "https://kitsu.io/api/edge".freeze
      response = "#{BASE_URL}/manga"
      it { expect(response).to_not eq nil }
    end
  end
end
