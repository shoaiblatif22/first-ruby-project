require "calculate_reading_time"

RSpec.describe "calculate_reading_time" do
  context "given an empty string" do
    it "returns zero" do
      result = calculate_reading_time("")
      expect(result).to eq 0
    end
  end
  
  context "given a text of under two hundred words" do
    it "returns one" do
      result = calculate_reading_time("one")
      expect(result).to eq 1
    end
  end

  context "given a text of two hundred words" do 
    it "returns one" do
      result = calculate_reading_time ("one " * 200)
      expect(result).to eq 1
    end
  end

  context "given a text of 300 hundred words" do 
    it "returns one" do
      result = calculate_reading_time ("one " * 300)
      expect(result).to eq 2
    end
  end

  context "given a text of 400 hundred words" do 
    it "returns one" do
      result = calculate_reading_time ("one " * 400)
      expect(result).to eq 2
    end
  end

  context "given a text of 5000 words" do 
    it "returns one" do
      result = calculate_reading_time ("one " * 5000)
      expect(result).to eq 25
    end
  end

  context "given a text of 10000 words" do
    it "returns one" do
      result = calculate_reading_time ("one " * 10000)
      expect(result).to eq 50
    end
  end
end
#need to push files again please ignore#