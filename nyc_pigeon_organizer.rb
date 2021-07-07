def nyc_pigeon_organizer(data)
  new_hash = data.reduce({}) do |name_hash, (key1, value1)|
    value1.reduce(name_hash) do |key_hash, (key2, value2)|
      value2.reduce(key_hash) do |threehash, name|
        if threehash[name]!= nil
          if threehash[name][key1.to_sym] != nil
            threehash[name][key1.to_sym].push(key2.to_s) 
          else
            threehash[name][key1.to_sym] = [key2.to_s]
          end
        else 
          threehash[name] = {key1.to_sym => [key2.to_s]} 
        end
        threehash
      end
    end
  end
  new_hash
end
