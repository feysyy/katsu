require 'rails_helper'

RSpec.describe 'Collections', type: :request do
  let(:user) { create :user }
  let(:valid_attributes) { {:name => 'zxczxc'} }

  before do
    sign_in user
  end

  describe 'GET /collections' do

    it "displays all collections" do
      Collection.create! valid_attributes
      get collections_path
      expect(response).to be_successful
    end
  end

end