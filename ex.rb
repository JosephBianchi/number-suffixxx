def ordinalizer(range)
  range.each do |num|
    if num > 20
      num = num.to_s
      num_array = num.split(//)
        if num_array.last.to_i == 2
          puts "#{num}nd"
        elsif num_array.last.to_i == 3
          puts "#{num}rd"
        elsif num_array.last.to_i > 3 || num_array.last.to_i == 0
          puts "#{num}th"
        end
    elsif num > 0 && num <= 10
      num = num.to_s
      num_array = num.split(//)
        if num_array.last.to_i == 1
          puts "#{num}st"
        elsif num_array.last.to_i == 2
          puts "#{num}nd"
        elsif num_array.last.to_i == 3
          puts "#{num}rd"
        elsif num_array.last.to_i > 3 || num_array.last.to_i == 0
          puts "#{num}th"
        end
    elsif num > 10 && num <= 20
      num = num.to_s
      puts "#{num}th"
    end
  end
end

range = (1..100).to_a
ordinalizer(range)
