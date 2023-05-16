class MusicTracker
  def initialize
    @tracks = []
  end

  def add_track(track)
    @tracks << track
  end

  def display_track
    @tracks.each { |track| puts track }
  end
end