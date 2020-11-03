require 'rails_helper'

RSpec.describe Outing, type: :model do
    describe 'relationships' do
        it "should have many contestants" do
            outing = Outing.reflect_on_association(:contestants)
            expect(outing.macro).to eql(:has_many)
        end
    end

    describe 'validations' do
        it { should validate_presence_of :name }
        it { should validate_presence_of :location }
        it { should validate_presence_of :date }
    end
end