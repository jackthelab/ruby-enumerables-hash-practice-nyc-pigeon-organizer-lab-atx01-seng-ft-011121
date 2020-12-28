def nyc_pigeon_organizer(data)
  pigeon_list = {}
  pigeon_names = data.keys[0].values.uniq.flatten
  pigeon_traits = data.keys
  
  pigeon_names.each do |name|
    pigeon_list[name] = {}
    pigeon_traits.each do |trait|
      pigeon_list[name][trait] = []
    end
  end
  
  data.keys.keys
  
end
