require "rails_helper"

RSpec.describe 'As a visitor' do
    it "can see all the information for that bachelorette" do
        bachelorette = Bachelorette.create(name: "Hannah Brown", season_number: "Season 15", season_description: "The Most Dramatic Yet!")
        contestant = Contestant.create(name: "Steve Smith", age: 25, hometown: "Denver")
        bachelorette.contestants << contestant

        visit "/bachelorettes/#{bachelorette.id}"

        expect(page).to have_content("Name: #{bachelorette.name}")
        expect(page).to have_content("Season Number: #{bachelorette.season_number}")
        expect(page).to have_content("Description: #{bachelorette.season_description}")

        click_on "See All Contestants"
        expect(current_path).to eql("/bachelorettes/#{bachelorette.id}/contestants")

        expect(page).to have_content("Name: #{contestant.name}")
        expect(page).to_not have_content("Name: Will Smith")
    end
end