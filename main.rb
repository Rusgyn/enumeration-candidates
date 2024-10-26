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

### Task 3. "Qualified" candidates
#### Takes in the collection of candidates
#### Returns a subset of the candidates that meet the following criteria:
  # Are experienced
  # Have 100 or more Github points
  # Know at least Ruby or Python
  # Applied in the last 15 days
  # Are over the age of 17 (18+)

pp qualified_candidates(@candidates)
