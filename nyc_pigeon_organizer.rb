def nyc_pigeon_organizer(data)
  data.reduce({}) do |memo, (data_key, hash)|
    hash.reduce(memo) do |memo, (quality, name_array)|
      i = 0
      while i < name_array.length do
        if !memo[name_array[i]]
          memo[name_array[i]] = {data_key => [quality.to_s]}
        elsif !memo[name_array[i]][data_key]
          memo[name_array[i]][data_key] = [quality.to_s]
        else
          memo[name_array[i]][data_key] << quality.to_s
        end
        i += 1
      end
      memo
    end
    memo
  end
end
