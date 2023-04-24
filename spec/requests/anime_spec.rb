require 'rails_helper'

RSpec.describe "Anime", type: :request do
  describe".response" do
    context "when endpoint is /anime" do 
      BASE_URL = "https://kitsu.io/api/edge".freeze
      response = "#{BASE_URL}/anime"
      it { expect(response).to_not eq nil }
    end
  end
end
