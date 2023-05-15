class GrammarStats
  def initialize
    @pass_count = 0
    @total_count = 0
  end

  def check(text)
    return false if text.nil? || text.empty?

    first_letter_is_uppercase = text[0] == text[0].upcase
    last_character_is_valid = [".", "!", "?"].include?(text[-1])
    result = first_letter_is_uppercase && last_character_is_valid

    if result
      @pass_count += 1
    end
    
    @total_count += 1
    result
  end

  def percentage_good
    if @total_count == 0
      return 0.0
    else
      return (@pass_count.to_f / @total_count.to_f) * 100.0
    end
  end
end
