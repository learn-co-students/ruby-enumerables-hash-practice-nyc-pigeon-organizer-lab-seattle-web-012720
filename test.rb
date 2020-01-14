def birds_array(data)
  #works
  birds_array = []
  birds_array << data[:gender][:male].uniq
  birds_array << data[:gender][:female].uniq
  all_birds = birds_array[0].concat(birds_array[1])
  all_birds
end 

def create_new_hash(data)
  #works
  all_birds = birds_array(data)
  hash = {}
  index = 0 
  while index < all_birds.length do 
     hash[all_birds[index]] = {
       :color => [],
       :gender => [],
       :lives => []
     }
     index += 1
  end
  hash
end 

  #I'll use this method to plug the values from the original data to my new hash.
def iterate_through_attributes(data)
  #does not work. something wrong with inserting values into hash or the hash creation process in general

  hash = create_new_hash(data)
  #I need to gather the attributes about all the birds from the original data.
  #I think I'll have to iterate over each symbol for the attributes(color,gender,lives)
		#for this I can use a while loop.
		
	hash_index = 0
	while hash_index < hash.size do
    	hash.values_at(hash_index)
    	#attribute index is the counter for the first hash of :color, :gender, and :lives
    attribute_index = 0 
    while attribute_index < data.length do 
    
      #trait index is the counter for the hash of traits for each :color, :gender, or :lives
      trait_index = 0 
      while trait_index < data[attribute_index].length do
        if data[attribute_index][trait_index].include? == hash[index][attribute_index]
          
         hash[index][attribute_index][trait_index] = data[attribute_index][trait_index]
        end 
        trait_index += 1
      end 
    attribute_index += 1 
    end
    hash_index += 1 
  end
   hash
end

def nyc_pigeon_organizer(data)
	
	#I'll use .value? and an if statement for each name?  
	
	#and then I'll have to iterate through each element of the array at those symbols.
		#I can use value?  method here.  
  iterate_through_attributes(data)
end
