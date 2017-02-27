 result_arr = []

 File.open("weather.dat") do |f|
    while (line = f.gets)
      line_array = line.split
      #splits line into array
      day = line_array[0].to_i
      max = line_array[1].to_f
      min = line_array[2].to_f
      result = max.to_i - min.to_i
      result_arr << [result, day] unless result == 0
  	 end
   sorted = result_arr.sort
   first = sorted.shift
   p "day " + first[1].to_s
 end
