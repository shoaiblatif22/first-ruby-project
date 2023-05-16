require "music_tracker"

RSpec.describe "music_tracker" do
  describe "#initialize" do
    it "Creates a new MusicTracker object with an empty track list" do
      music_tracker = MusicTracker.new
      expect(music_tracker.instance_variable_get(:@tracks)).to eq []
    end
  end

  describe "#add_track" do
    it "Adds a track to the track list" do
      music_tracker = MusicTracker.new
      music_tracker.add_track("track1")
      expect(music_tracker.instance_variable_get(:@tracks)).to eq ["track1"]
    end
  end

  describe "#display_track" do 
    it "prints out the list of tracks" do
      music_tracker = MusicTracker.new
      music_tracker.add_track("track1")
      music_tracker.add_track("track2")
      music_tracker.add_track("track3")

      expect { music_tracker.display_track }.to output("track1\ntrack2\ntrack3\n").to_stdout
    end    
  end
end