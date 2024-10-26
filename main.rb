# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

puts "Task 1"
### Task 1. Experienced Candidates
#### Takes in a single candidate (hash). Note: not the array.
#### Returns true if the candidate has 2 years of experience or more
#### Returns false otherwise
puts experienced?(@candidates[0])  # Output: TRUE
puts experienced?(@candidates[1])  # Output: FALSE
puts"-----"

puts "Task 2"
### Task 2. Finding by :id
#### Takes in an id
#### Returns the candidate with that :id
#### If there is no candidate with that id, it naturally returns nil
pp find(7) # Output: The candidate id 7 hash
pp find(100) # Output nil
puts"-----"

puts "Task 3"
### Task 3. "Qualified" candidates
#### Takes in the collection of candidates
#### Returns a subset of the candidates that meet the following criteria:
  # Are experienced
  # Have 100 or more Github points
  # Know at least Ruby or Python
  # Applied in the last 15 days
  # Are over the age of 17 (18+)

pp qualified_candidates(@candidates)
puts"-----"

puts "Task 4"
### Task 4. Sort on Experience and Points
#### Takes in a collection of candidates
#### Instead of filtering on the candidates, returns them all back but reordered such that:
  # Candidates with the most experience are at the top
  # For Candidates that have the same years of experience, they are further sorted by their number of Github points (highest first)

pp ordered_by_qualifications(@candidates)
