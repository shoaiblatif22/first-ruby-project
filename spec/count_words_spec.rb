require 'count_words'

RSpec.describe 'count_words' do
  describe 'with empty string' do
    it "returns 0" do
      expect(count_words("")).to eq(0)
    end
  end

  describe "with non-empty string" do
    it "returns the correct count" do
      expect(count_words("How now brown cow")).to eq(4)
    end
  end
end
