require "grammar_stats"

RSpec.describe "GrammarStats" do
  describe "#initialize" do
    it "sets @pass_count to and @total_count to zero" do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.instance_variable_get(:@pass_count)).to eq(0)
      expect(grammar_stats.instance_variable_get(:@total_count)).to eq(0)
    end
  end

  describe "#check" do  
    it "returns false if text is nil or empty string input" do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check(nil)).to eq(false)
      expect(grammar_stats.check("")).to eq(false)
    end

    it "Returns false if string begins with lowercase letter or ends with a non-ending punctuation" do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check("hello!")).to eq(false)
      expect(grammar_stats.check("Hello")).to eq(false)
      expect(grammar_stats.check("hello")).to eq(false)
    end
    it "increments @pass_count if check passes" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("This is a correct test sentence.")
      expect(grammar_stats.instance_variable_get(:@pass_count)).to eq 1
    end

    it "increments @total_count regardless of check result" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("This is a correct test sentence.")
      grammar_stats.check("This is an incorrect test sentence,")
      expect(grammar_stats.instance_variable_get(:@total_count)).to eq 2
    end
  end

  describe "#percentage_good" do
    it "returns 0.0 if no checks have been performed" do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.percentage_good).to eq 0.0
    end

    it "returns the percentage of checks that passed" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("This is a correct test sentence.")
      grammar_stats.check("This is an incorrect test sentence")
      grammar_stats.check("This is a correct test sentence.")
      grammar_stats.check("This is an incorrect test sentence")
      grammar_stats.check("This is a correct test sentence.")
      grammar_stats.check("This is a correct test sentence.")
      grammar_stats.check("This is an incorrect test sentence")
      grammar_stats.check("This is an incorrect test sentence")
      expect(grammar_stats.percentage_good).to eq 50.0
    end
  end
end
