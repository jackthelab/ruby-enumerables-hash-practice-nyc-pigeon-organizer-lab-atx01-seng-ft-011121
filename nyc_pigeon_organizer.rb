def nyc_pigeon_organizer(data)
 pigeon_list = {}

  pigeon_details = []
  pigeon_hash.keys.map { |key| pigeon_details.push(key) }
  #puts pigeon_details

  pigeon_names = pigeon_hash[pigeon_hash.keys[0]].values.flatten.uniq
  #puts pigeon_names

  pigeon_names.each do |name|
    pigeon_list[name] = {}
    pigeon_details.each do |detail|
      pigeon_list[name][detail] = []
    end
  end

  pigeon_details.each do |detail|
    sub_keys = pigeon_hash[detail].keys
    #puts sub_keys
    sub_keys.each do |sub_key|
      pigeon_hash[detail][sub_key].each do |name|
        pigeon_list[name][detail].push(sub_key.to_s)
      end
    end
  end

  pigeon_list
  
end
