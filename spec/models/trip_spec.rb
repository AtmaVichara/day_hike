require 'rails_helper'

describe Trip, type: :class do
  describe "Relationships" do
    it {should have_many(:trails)}
  end
end
