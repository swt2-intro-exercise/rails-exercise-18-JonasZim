require 'rails_helper'

RSpec.describe Author, type: :model do
  it "should do sth" do
    author = Author.new('first_name' => 'Alan', 'last_name'=>'Turing', 'homepage'=>'http://wikipedia.org/Alan_Turing')

    expect(author.name).to eq('Alan Turing')
    expect(author.homepage).to eq('http://wikipedia.org/Alan_Turing')
  end

end
