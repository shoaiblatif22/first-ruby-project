## 1. Describe the problem

#As a user
#So that i can manage my time
#I want to see an estimate of reading time for a test, 
#assuming that I can read 200 words a minute

## 2. Design the Method signature

reading time = calculate_reading_time(text)

# test is a string with words in it
# reading time is an integer representing minutes

# 1
calculate_reading_time("")
# => 0

# 2 
calculate_reading_time("one")
# => 1

# 3
calculate_reading_time("TWO_HUNDRED_WORDS")
# => 1

# 4 
calculate_reading_time("THREE_HUNDRED_WORDS")
# => 2

# 5
calculate_reading_time("FOUR_HUNDRED_WORDS")
# => 0

# 6
calculate_reading_time("FIVE_THOUSAND_WORDS")
# => 25




