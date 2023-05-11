# Grammar Method Design Recipe
## 1. Describe the Problem

> As a user
> So that i can improve my grammar
> I want to verify that a text starts with a capital letter and ends with a
> suitable sentence-ending punctuation mark.

# 2. Design the method signature
_Include the name of the method, tis paramters, return value, and side effects._

is_correct = check_grammar(text)

# • text is a tring with words in it
# • is_correct is a boolean


## 3. Create examples as tests
_Make a list of examples of what the method will take and return_

# 1: Given an empty string
check_grammar("")
# => fail "Not a sentence."
#### TEST PASSED ####

# 2: 
check_grammar("Hello, I am Shoaib.")
# => true
#### TEST PASSED ####

# 3: 
check_grammar("Hello, I am Shoaib")
# => false
#### TEST PASSED ####

# 4: 
check_grammar("hello, I am Shoaib.")
# => false
#### TEST PASSED ####

# 5: 
check_grammar("HELLO, I am Shoaib")
# => false
#### TEST PASSED ####

# 6: 
check_grammar("Hello, I am Shoaib!")
# => true

# 7: 
check_grammar("Hello, I am Shoaib?")
# => true

# 8: 
check_grammar("Hello, I am Shoaib,")
# => false


_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the behaviour
_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
