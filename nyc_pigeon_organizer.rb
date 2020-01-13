def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |color_gen_loc, data_hash|
    data_hash.each do |attribute, array|
      array.each do |name|
        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end
        if !new_hash[name].has_key?(color_gen_loc)
          new_hash[name][color_gen_loc] = []
        end
        if !new_hash[name][color_gen_loc].include?(attribute)
          new_hash[name][color_gen_loc] << attribute.to_s
        end
        
      end
    end
  end
  new_hash
end
