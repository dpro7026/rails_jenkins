require 'rails_helper'

RSpec.feature "Creating Home Page" do
  scenario do
    visit '/'

    expect(page).to have_content('Home')

  end
end
