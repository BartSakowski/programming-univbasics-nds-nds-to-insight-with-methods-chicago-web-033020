$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movie_index = 0
   director_total = 0
   while movie_index < director_data[:movies].length
     director_total += director_data[:movies][movie_index][:worldwide_gross]
     movie_index += 1
   end
   director_total

 end
# Write a method that, given an NDS creates a new Hash
# The return value should be like:

# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
results = {}
  director_data = 0

  while director_data < nds.length do
    director = nds[director_data]
  
    results[director[:name]] = gross_for_director(director)

    # if results.has_key?(nds[director_data][:name])
    #   results[nds[director_data][:name]] += gross_for_director(director_data)
    # else
    #   results[nds[director_data][:name]] = gross_for_director(director_data)
    # end
    director_data += 1
  end
results
end
