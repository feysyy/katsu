require 'rails_helper'

RSpec.describe Anime, type: :model do

  
  it "belongs to collection" do
    expect(described_class.reflect_on_association(:collection).macro).to eq(:belongs_to)
  end
end
