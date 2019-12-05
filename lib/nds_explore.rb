$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# Call the method directors_database to retrieve the NDS
directors_database

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp directors_database
end

# STREAMLINED SECOND SUCCESSFUL SOLUTION!!!
def print_first_directors_movie_titles
  movie_index = 0 
  
  while movie_index < directors_database[0][:movies].count do 
    puts directors_database[0][:movies][movie_index][:title]
    movie_index += 1
  end
end



# FIRST SUCCESSFUL SOLUTION!!! I THINK WE CAN SLIM IT DOWN THOUGH, LET'S NOT RETURN AN ARRAY, LETS GO STRAIGHT TO "PUTS MOVIE TITLES"
# def print_first_directors_movie_titles
#   movie_index = 0 
#   all_films = []
  
#   while movie_index < directors_database[0][:movies].count do 
#     all_films << directors_database[0][:movies][movie_index][:title]
#     movie_index += 1
#   end
#   all_films.each do |i|
#     puts i 
#   end 
# end












# FIRST STAGE, ALMOST SUCCESSFUL, OUTPUT FORMAT NOT CORRECT, MISREMEMBERED WHAT THEY WANTED US TO RETURN, BUT BASICALLY THERE!!!
# def print_first_directors_movie_titles
#   movie_index = 0 
#   all_films = []
  
#   while movie_index < directors_database[0][:movies].count do 
#     all_films << directors_database[0][:movies][movie_index][:title]
#     movie_index += 1
#   end
#   p all_films
# end




# NOTES
# pp directors_database[0]
#   #AoH AoH 
#   directors_database[0][:movies] # now we're pointing at the array we want to iterate through
#   directors_database[0][:movies][movie_index][:title] # this is what we add to the collection we return, movie_index is our incrementor. 
#   # while movie_index < directors_database[0][:movies].count do 