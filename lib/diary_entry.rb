class DiaryEntry
  def initialize(title, contents)
    @title = title  
    @contents = contents
  end

  def title
    return @title
  end

  def contents
    return @contents    
  end

  def count_words
    @contents.split(" ").length
  end

  def reading_time(wpm)
    fail "Reading speed must be greater than 0" unless wpm > 0
    return (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes)
    @contents
  end
end