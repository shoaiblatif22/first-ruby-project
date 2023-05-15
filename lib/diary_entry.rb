class DiaryEntry
  def initialize(title, contents)
    @title = title  
    @contents = contents
    @furthest_word_read = 0
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
    fail "Reading speed must be greater than 0" unless wpm.positive?
    return (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes)
    no_words_we_can_read = wpm * minutes
    start_from = @furthest_word_read
    end_at = @furthest_word_read + no_words_we_can_read
    word_list = words[start_from, end_at]
    @furthest_word_read = no_words_we_can_read
    @furthest_word_read = end_at

    if end_at >= count_words
      @furthest_word_read = 0
    else
      @furthest_word_read = end_at
    end
    return word_list.join(" ")
  end

  private

  def words
    return @contents.split(" ")
  end
end