# Grammar Method Design Recipe
## 1. Describe the Problem

>As a user
>So that I can keep track of my tasks
>I want to check if a text includes the string #TODO


# 2. Design the method signature
_Include the name of the method, tis paramters, return value, and side effects._

checkword(text)
  text => string
end


## 3. Create examples as tests
_Make a list of examples of what the method will take and return_

## 1
text => " "
return true
However, should return false when inputting a string
#### TEST PASSED ####

## 2
text => "this is a test"
return false (test should fail)
### TEST PASSED ####

## 3
text => "#TODO"
return true (test should pass)


_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the behaviour
_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
