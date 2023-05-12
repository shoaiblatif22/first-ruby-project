require 'checkword'

RSpec.describe "checkword" do
  it "returns an empty string" do
    actual = checkword(" ")
    expect(actual).to eq false
  end

  it "does not include #TODO" do
    actual = checkword("this is a test")
    expect(actual).to eq false
  end

  it "includes #TODO" do
    actual = checkword("#TODO")
    expect(actual).to eq true
  end

  it "includes #todo instead of #TODO" do
    actual = checkword("#todo")
    expect(actual).to eq false
  end
end