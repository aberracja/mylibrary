require 'bacon'
describe Bacon do
  it "is edible" do
    ## Tomash zmienił na eql(true) - don't know why..
    expect(Bacon.new.edible?).to eql(true)
  end
  it "expired!" do
    bacon = Bacon.new
    bacon.expired!
    expect(bacon).to_not be_edible
  end
end