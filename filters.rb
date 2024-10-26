# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program
require './candidates'
def find(id)
    # Your code Here
    @candidates.find { |candidate| candidate[:id] === id }

  end
  
  def experienced?(candidate)
    # Your code Here
    candidate[:years_of_experience] >=2
  end
  
  def qualified_candidates(candidates)
    # Your code Here
    qualified(@candidates)

  end
  
  # More methods will go below

  #Helper
  def qualified(candidates)

    qualifies = []
    
    @candidates.each do |candidate| 
    qualifies.push(candidate) if
      candidate[:years_of_experience] != 0 &&
      candidate[:github_points] >= 100 &&
      candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python') &&
      candidate[:date_applied] <= 15.days.ago.to_date &&
      candidate[:age] > 17
    end

    qualifies
  end

  def ordered_by_qualifications(candidates)
    @candidates.sort_by do |candidate| 
      [candidate[:years_of_experience], candidate[:github_points]]
    end 
    .reverse

  end
