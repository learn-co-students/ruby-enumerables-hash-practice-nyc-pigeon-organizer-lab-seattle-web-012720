def nyc_pigeon_organizer(data)
  reorganized = {}
  name_keys = []
  #iterate over each entry in the original hash
  data.each{|category, category_type|
    category_type.each{|descriptor, names|
      i=0
      while i<names.length do
        if !name_keys.include?(names[i])
          name_keys.push(names[i])
        end
        i+=1
      end
    }
  }

  name_keys.each{|pigeon|
    reorganized[pigeon] = {}
    data.each{|key, hash|
      reorganized[pigeon][key] = []
      hash.each{|sub_key, array|
        reorganized[pigeon][key].push(sub_key.to_s) if array.include?(pigeon)
      }
    }
  }
  reorganized
end