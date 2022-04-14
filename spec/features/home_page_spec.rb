require "rails_helper"

RSpec.feature "Visiting the homepage", type: :feature do
  scenario "The visitor should see projects" do
    visit root_path
    expect(page).to have_text("Projects")
  end
end

require "rails_helper"

RSpec.feature "Visiting the homepage", type: :feature do
  scenario "The visitor should see about" do
    visit root_path
    expect(page).to have_text("About")
  end
end

require "rails_helper"

RSpec.feature "Visiting the homepage", type: :feature do
  scenario "The visitor should see contact" do
    visit root_path
    expect(page).to have_text("Contact")
  end
end