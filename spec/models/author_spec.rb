describe "an author object", type: :model do

    it "should have a name and a homepage" do
        author = Author.new('Alan', 'Turing', 'http://wikipedia.org/Alan_Turing')

        expect(author.name).to eq('Alan Turing')
        expect(author.homepage).to eq('http://wikipedia.org/Alan_Turing')
    end
end