require 'rails_helper'

RSpec.describe Post, type: :model do


  it "belongs to user" do
    expect(described_class.reflect_on_association(:user).macro).to eq(:belongs_to)
  end
end
