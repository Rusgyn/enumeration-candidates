# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

### Task 1. Experienced Candidates
#### Takes in a single candidate (hash). Note: not the array.
#### Returns true if the candidate has 2 years of experience or more
#### Returns false otherwise
puts experienced?(@candidates[0])  # Output: TRUE
puts experienced?(@candidates[1])  # Output: FALSE

#pp @candidates