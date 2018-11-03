require 'rails_helper'

describe "New author page", type: :feature do
  
  it "should render withour error" do
    visit new_author_path
  end

  it "should have text inputs for an author's first name, last name, and homepage" do
    visit new_author_path
    
    # these are the standard names given to inputs by the form builder
    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

  it "should create new table entry" do
    visit new_author_path
    page.fill_in('author[first_name]', with: 'Alan')
    page.fill_in('author[last_name]', with: 'Turing')
    page.fill_in('author[homepage]', with: 'http://wikipedia.org/Alan_Turing')
    find('input[type="submit"]').click
  end

  it "should have a valid name" do
    author = Author.new('first_name' => 'Alan', 'last_name' => '', 'homepage' => 'example.com')

    expect(author).to_not be_valid
  end

  it "should throw errors if the entry is not valid" do
    visit new_author_path
    page.fill_in('author[first_name]', with: 'Alan')
    page.fill_in('author[last_name]', with: 'Turing')
    page.fill_in('author[homepage]', with: 'http://wikipedia.org/Alan_Turing')
    find('input[type="submit"]').click

    #i dont know how i get the infos i would like to get like the author_params
  end
end