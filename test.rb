pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

test = {:purple => ["Theo", "Peter Jr.", "Lucky"]}

def make_array_of_pigeon_names(data)
  array = []
  data.values.map { |x| array << x.values}
  array.flatten.uniq
end

def make_array_of_internal_keys(data)
  array = []
  data.keys.map { |x| array << x}
  array
end

def make_array_of_values(data)
  array = []
  list_of_keys_to_dig_into = make_array_of_internal_keys(data)
  index = 0 
  while index < list_of_keys_to_dig_into.length do
    array << data[list_of_keys_to_dig_into[index]].keys
    index += 1
  end
  list = array.flatten.map {|x| x.to_s}
  list.map {|x| x.to_s}
end

def create_hash_structure(data)
  pigeon_list = {}
  attributes_list = {}
  names = make_array_of_pigeon_names(data)
  attributes = make_array_of_internal_keys(data)
  
  i = 0
  while i < attributes.length do
    attributes_list[attributes[i]] = []
    i += 1
  end
  ii = 0
  while ii < names.length do
    pigeon_list[names[ii]] = attributes_list
    ii += 1
  end  
  pigeon_list
end

def nyc_pigeon_organizer(data)
  names = make_array_of_pigeon_names(data)
  array_of_attributes = make_array_of_internal_keys(data)
  colors_as_symbols = data[:color].keys
  colors_as_strings = data[:color].keys.map {|x| x.to_s}
  genders_as_symbols = data[:gender].keys
  genders_as_strings = data[:gender].keys.map {|x| x.to_s}
  places_as_strings = data[:lives].keys
  structure = create_hash_structure(data)
  
  #if data.dig(array_of_attributes[index2], colors_as_symbols[index3]).include?(names[index])
    #structure[names[index]][array_of_attributes[index2]] << colors_as_strings[index3]
  #end
  
  #if data.dig(:color, :purple).include?("Theo")
    # structure.dig("Theo", :color) << :purple.to_s
  #else 
    # move to next
  #end
  
end

test_data = create_hash_structure(pigeon_data)
test_data["Alex"][:gender] << ("purple")
pp test_data
