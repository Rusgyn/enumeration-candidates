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

### Task 2. Finding by :id
#### Takes in an id
#### Returns the candidate with that :id
#### If there is no candidate with that id, it naturally returns nil
pp find(7) # Output: The candidate id 7 hash
pp find(100) # Output nil

#pp @candidates