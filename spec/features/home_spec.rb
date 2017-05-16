require 'rails_helper'

RSpec.feature 'Homepage' do
  scenario 'I can go home', :js do
    visit '/'
    expect(page).to have_content 'Welcome'
  end
end
