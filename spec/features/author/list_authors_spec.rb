require 'rails_helper'

describe 'authors page', type: :feature do

    it 'should render without error' do
        visit '/authors'
    end

    it 'should have a table with the authors name' do
        visit '/authors'

        expect(page).to have_selector('table tr')
        expect(page).to have_link 'New', href: new_author_path
    end

    it 'should have an delete button which deletes the chosen author' do
    end
end