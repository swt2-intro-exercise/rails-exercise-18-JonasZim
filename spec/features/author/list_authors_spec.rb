require 'rails_helper'

describe 'authors page', type: :feature do

    it 'should render without error' do
        visit '/authors'
    end

end