def nyc_pigeon_organizer(data)
  pigeon_list = {}
  pigeon_names = data[data.keys[0]].values.uniq.flatten
  pigeon_traits = data.keys
  
  pigeon_names.each do |name|
    pigeon_list[name] = {}
    pigeon_traits.each do |trait|
      pigeon_list[name][trait] = []
    end
  end
  
  pigeon_traits.each do |trait|
    sub_traits = data.trait.keys
    sub_traits.each do |sub_trait|
      data[trait][sub_trait].each do |name|
        pigeon_list[name][trait].push(sub_trait.to_s)
      end
    end
  end
  
end
