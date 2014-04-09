def pmu_format!(race_array)
  #TODO: modify the given array so that it is PMU-consistent
  race_array.shuffle!
    for i in 0..(race_array.count-1)
      race_array[i] = "#{(i+1).to_s} - #{race_array[i]}!"
    end
  race_array
end

puts pmu_format!(["Abricot du Laudot", "Black Caviar", "Brigadier Gerard"])


