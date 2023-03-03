require 'rails_helper'

RSpec.describe User, type: :model do


  it "has many collections" do
    expect(described_class.reflect_on_association(:collections).macro).to eq(:has_many)
  end

  it "has many posts" do
    expect(described_class.reflect_on_association(:posts).macro).to eq(:has_many)
  end
end
