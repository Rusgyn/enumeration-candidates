# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program
require './candidates'
def find(id)
    # Your code Here
  end
  
  def experienced?(candidate)
    # Your code Here
    candidate[:years_of_experience] >=2
  end
  
  def qualified_candidates(candidates)
    # Your code Here
  end
  
  # More methods will go below