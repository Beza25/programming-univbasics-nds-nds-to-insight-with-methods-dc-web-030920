$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require "pry"

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
    pp director_data

  row = 0
  total = 0 
  
  director_data[:movies] { |movie|
    total += movie[:worldwide_gross ]
   
    
  }
  
  
  # while row < director_data[:movies].length do 
  #   total += director_data[:movies][row] [:worldwide_gross ]
  #   row +=1
  # end 
  total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
# director_data


# adding the total for 
def directors_totals(nds)
  result = {}
  row_index = 0
  while row_index < nds.length do
    # the key for the hash reuslt
    name = nds[row_index][:name]
 
    # value = total_of_worldwide_grosses (nds)
    result[name] = total_of_worldwide_grosses(nds, row_index )
    row_index += 1
  end
  result
end

# finding the total_of_worldwide_grosses which will be the
# value for the hash we need to return

def total_of_worldwide_grosses (nds, row_index)
  total = 0
  inner_row_index = 0 
  while inner_row_index < nds[row_index][:movies].length do
    total += nds[row_index][:movies][inner_row_index][:worldwide_gross]
    inner_row_index += 1
  end
  total
end 


