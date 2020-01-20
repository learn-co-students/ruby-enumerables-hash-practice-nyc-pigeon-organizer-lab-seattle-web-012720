def nyc_pigeon_organizer(data)
  hash_list = {}
  data.each do |key, value|
    value.each do |value2, names|
      names.each do |name|
        hash_list[name] ||= {}
        hash_list[name][key] ||= []
        hash_list[name][key].push(value2.to_s)
      end
    end
  end
  hash_list
  # write your code here!
end