require "diary"
require "diary_entry_two"

RSpec.describe "integration" do
  context "after adding some entries" do
    it "lists out the entries added" do
      diary = Diary.new
      diary_entry = DiaryEntry.new("my title", "my contents")
      diary.add(diary_entry)
      expect(diary.all).to eq [diary_entry]
    end
  end
end