$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'
<<<<<<< HEAD
=======

>>>>>>> 6dfc8012ce2050aec4752a52b3b0c584e7745ec8
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  binding.pry
  movie_index = 0
   director_total = 0
   while movie_index < director_data[:movies].length
     director_total += director_data[:movies][movie_index][:worldwide_gross]
<<<<<<< HEAD
     movie_index += 1
   end
   director_total

=======
     binding.pry
     movie_index += 1
   end
   director_total
>>>>>>> 6dfc8012ce2050aec4752a52b3b0c584e7745ec8
 end
# Write a method that, given an NDS creates a new Hash
# The return value should be like:

# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
results = {}
  director_data = 0
<<<<<<< HEAD

  while director_data < nds.length do
    director = nds[director_data]

    results[director[:name]] = gross_for_director(director)

    # if results.has_key?(nds[director_data][:name])
    #   results[nds[director_data][:name]] += gross_for_director(director_data)
    # else
    #   results[nds[director_data][:name]] = gross_for_director(director_data)
    # end
=======
  while director_data < nds.length do
    if results.has_key?(nds[director_data][:name])
      results[nds[director_data][:name]] += gross_for_director(director_data)
    else
      results[nds[director_data][:name]] = gross_for_director(director_data)
    end
>>>>>>> 6dfc8012ce2050aec4752a52b3b0c584e7745ec8
    director_data += 1
  end
results
end
