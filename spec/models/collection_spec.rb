require 'rails_helper'

RSpec.describe Collection, type: :model do
  it "belongs to user" do
    expect(described_class.reflect_on_association(:user).macro).to eq(:belongs_to)
  end
  
  it "has many anime" do
    expect(described_class.reflect_on_association(:anime).macro).to eq(:has_many)
  end

  it "has many manga" do
    expect(described_class.reflect_on_association(:manga).macro).to eq(:has_many)
  end
end
