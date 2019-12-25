require 'spec_helper'

feature 'Within: Scoping' do
  background do
    visit 'https://the-internet.herokuapp.com/checkboxes'
  end

  scenario 'Within (Checkboxes): checkbox 1' do
    within('form#checkboxes') do
      expect(page).to have_content('checkbox 1')
    end
  end

  scenario 'Within (Checkboxes): checkbox 2' do
    within('form#checkboxes') do
      expect(page).to have_content('checkbox 2')
    end
  end
end
