require 'make_snippet'


RSpec.describe "make_snippet" do
  it "takes a string as an argument and returns the first 5 words" do #situation we're testing in
    actual = make_snippet("Hello, I am part of the Makers Academy")   #the setup
    expected = "Hello, I am part of..."                              #expectation
    expect(actual).to eq expected                                     #test
  end
end

  

