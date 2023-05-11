def make_snippet(str)
  #Check the length of the string
  #If string length is less than 5 return the string
  #I have to split the string 
  #
  words = str.split(" ")
  if words.length <= 5
    return str
  else 
    first_five_words = words[0, 5].join(" ") + "..."
  end
end