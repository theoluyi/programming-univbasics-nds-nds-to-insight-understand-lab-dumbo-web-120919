 1) When exploring the data structure using custom methods, print_first_directors_movie_titles loops over Spielberg’s movies and prints out their names with newlines
     Failure/Error: expect { print_first_directors_movie_titles }.to output("Jaws\nClose Encounters of the Third Kind\nRaiders of the Lost Ark\nE.T. the Extra-terrestrial\nSchindler's List\nLincoln\n").to_stdout

       expected block to output "Jaws\nClose Encounters of the Third Kind\nRaiders of the Lost Ark\nE.T. the Extra-terrestrial\nSchindler's List\nLincoln\n" tostdout, but output "{:name=>\"Stephen Spielberg\",\n :movies=>\n  [{:title=>\"Jaws\",\n    :studio=>\"Universal\",\n    ...n\",\n    :studio=>\"Buena Vista\",\n    :worldwide_gross=>182207973,\n    :release_year=>2012}]}\n"
       Diff:
       @@ -1,7 +1,27 @@
       -Jaws
       -Close Encounters of the Third Kind
       -Raiders of the Lost Ark
       -E.T. the Extra-terrestrial
       -Schindler's List
       -Lincoln
# so below we have the contents of an array we have already stepped into at index 0 
# it is a hash containing two keys, :name and :movies
# the key :movies points to an array
# the array contains hashes, each of which has 4 keys, one of which is :title
# we want to collect each one of those titles and print them on separate lines without quotation marks
# I think that is done by p, not print 


outer_results = []
row_index = 0
while row_index < spice_rack.count do
  element_index = 0
  inner_results = []
  while element_index < spice_rack[row_index].count do
    # How to read the following line of code:
    #   Array at row_index
    #   Element of the inner array at element_index
    #   The first character of that element...
    if spice_rack[row_index][element_index][0] == "P"
      inner_results << spice_rack[row_index][element_index]
    end
    element_index += 1
  end
  outer_results << inner_results
  row_index += 1
end       
       
       +{:name=>"Stephen Spielberg",
       + :movies=>
       +  [{:title=>"Jaws",
       +    :studio=>"Universal",
       +    :worldwide_gross=>260000000,
       +    :release_year=>1975},
       +   {:title=>"Close Encounters of the Third Kind",
       +    :studio=>"Columbia",
       +    :worldwide_gross=>135189114,
       +    :release_year=>1977},
       +   {:title=>"Raiders of the Lost Ark",
       +    :studio=>"Paramount",
       +    :worldwide_gross=>248159971,
       +    :release_year=>1981},
       +   {:title=>"E.T. the Extra-terrestrial",
       +    :studio=>"Universal",
       +    :worldwide_gross=>435110554,
       +    :release_year=>1982},
       +   {:title=>"Schindler's List",
       +    :studio=>"Universal",
       +    :worldwide_gross=>96898818,
       +    :release_year=>1993},
       +   {:title=>"Lincoln",
       +    :studio=>"Buena Vista",
       +    :worldwide_gross=>182207973,
       +    :release_year=>2012}]}

     # ./spec/nds_explore_spec.rb:30:in `block (2 levels) in <top (required)>'

Finished in 0.01907 seconds (files took 0.25134 seconds to load)
2 examples, 1 failure

Failed examples:

rspec ./spec/nds_explore_spec.rb:29 # When exploring the data structure using custom methods, print_first_directors_movie_titles loops over Spielberg’s movies and prints out their names with newlines

[04:49:46] (master) programming-univbasics-nds-nds-to-insight-understand-lab-dumbo-web-120919
// ♥