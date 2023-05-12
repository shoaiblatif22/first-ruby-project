def count_words(string)
  string = string.strip 
  return 0 if string.empty?
  words = string.split(/\s+/)
  words.length
end