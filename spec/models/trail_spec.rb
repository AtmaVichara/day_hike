require 'rails_helper'

describe Trail, type: :class do
  describe "Relationships" do
    it {should belong_to(:trip)}
  end
end
