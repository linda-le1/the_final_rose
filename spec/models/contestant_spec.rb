require 'rails_helper'

RSpec.describe Contestant, type: :model do
  describe 'relationships' do
    it { should belong_to :bachelorette }

    it "should have many outings" do
      contestant = Contestant.reflect_on_association(:outings)
      expect(contestant.macro).to eql(:has_many)
    end
  end
end
