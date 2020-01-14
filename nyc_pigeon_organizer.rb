def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |color_gender_lives, data_hash|
    data_hash.each do |attribute, array|
      array.each do |name|
        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end
        if !new_hash[name].has_key?(color_gender_lives)
          new_hash[name][color_gender_lives] = []
        end
        if !new_hash[name][color_gender_lives].include?(attribute)
          new_hash[name][color_gender_lives] << attribute.to_s
        end
      end
    end
  end
  new_hash
end 