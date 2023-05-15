require "diary_entry"

RSpec.describe DiaryEntry do
  it "constructs" do
    diary_entry = DiaryEntry.new("title", "contents")
    expect(diary_entry.title).to eq "title"
    expect(diary_entry.contents).to eq "contents"
  end

  describe "#count_words" do
    it "counts words in the contents" do
      diary_entry = DiaryEntry.new("my_title", "some contents here")
      expect(diary_entry.count_words).to eq 3
    end
  end

  it "returns zero when contents is empty" do
    diary_entry = DiaryEntry.new("my_title", "")
    expect(diary_entry.count_words).to eq 0
  end

  describe "#reading_time" do
    context "given a wpm of some sensible number (200)" do
      it "returns the reading time in minutes it takes to read the content" do
        diary_entry = DiaryEntry.new("my_title", "one " * 550)
        expect(diary_entry.reading_time(200)).to eq 3
      end
    end

    context "given a wpm of 0" do
      it "fails" do
        diary_entry = DiaryEntry.new("my_title", "one two three")
        expect { diary_entry.reading_time(0) }.to raise_error( "Reading speed must be greater than 0")
      end
    end
  end

  describe "#reading_chunk" do
    context "with a content deadable within the given time" do  
      it "returns the full content" do
        diary_entry = DiaryEntry.new("my_title", "one two three")
        chunk = diary_entry.reading_chunk(200, 1)
        expect(chunk).to eq "one two three"
      end
    end

    context "with a contents unreadable within the given time" do 
      it "returns a readable chunk" do
        diary_entry = DiaryEntry.new("my_title", "one two three")
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq "one two"
      end
    end
  end
end


