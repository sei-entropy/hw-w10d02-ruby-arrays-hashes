$subway = {
    n: %w(times\ square 34th 28th 23rd union\ square 8th),
    l: %w(8th 6th union\ square 3rd 1st),
    sixth: %w(grand\ central 33rd 28th 23rd union\ square astor\ place),
}

def planTrip(start_line, start_stop, end_line, end_stop)
    # lower case all parameters for later validation
    start_line.downcase!
    end_line.downcase!
    start_stop.downcase!
    end_stop.downcase!

    # Check if both input lines exist or not
    unless !$subway[:"#{start_line}"].nil? && !$subway[:"#{end_line}"].nil? 
        puts "Invalid inputs"
        return
    end

    # Check if both input stations exist or not
    unless $subway[:"#{start_line}"].include?(start_stop) || $subway[:"#{end_line}"].include?(end_stop) 
        puts "Invalid inputs"
        return
    end


    # Two conditions:   
    unless start_line != end_line
        # 1. start_line == end_line >> same line
        stops = same_line(start_line, start_stop, end_stop)
        # if the returned value == -1 >> one or more of the values is invalid
        puts "#{stops} stops in total." unless stops == -1
    else
        # 2. start_line != end_line >> different lines
        stops = different_lines(start_line, start_stop, end_line, end_stop)
        # if the returned value == -1 >> one or more of the values is invalid
        puts "#{stops} stops in total." unless stops == -1
    end
end


def same_line(line, start_stop, end_stop)
    # get index of both stops from subways's array, if the stop does exist it returns the index, else returns nil
    start_index = $subway[:"#{line}"].index(start_stop)
    end_index = $subway[:"#{line}"].index(end_stop)

    # variable holds total number of stops 
    num_of_stops = 0

    # variable holds stops names
    stops = []
    
    # if start stop == end stop >> same stop, won't execute following statements and num_of_stops value won't change >> 0
    # push the name of the stop into the stops array 
    if(start_index == end_index)
    stops.push($subway[:"#{line}"][start_index])

    # if start stop is before end stop in the array >> loop from start to end
    elsif (start_index < end_index)
        # loop until the start_index reaches the end_index
        until (start_index == end_index)
            # increment num_of_stops
            num_of_stops += 1

            # increment the iterator
            start_index += 1

            stops.push($subway[:"#{line}"][start_index])

        end 

            # push the end station
            stops.push($subway[:"#{line}"][end_index])

    # if start stop is after end stop in the array >> loop from end to start
    elsif (start_index > end_index)
        # loop until the start_index reaches the end_index
        until (start_index == end_index)
            # increment num_of_stops
            num_of_stops += 1

            # decrement the iterator
            start_index -= 1

            stops.push($subway[:"#{line}"][start_index])
        end
        # push the end stop
        stops.push($subway[:"#{line}"][end_index])
    end

    puts "You must travel through the following stops on the #{line.capitalize} line:"
    print_stops(stops)

    return num_of_stops
end


def different_lines(start_line, start_stop, end_line, end_stop)
    # get index of both stop from subway's array, if the stop does exist it returns the index, else returns nil
    start_index = $subway[:"#{start_line}"].index(start_stop)
    end_index = $subway[:"#{end_line}"].index(end_stop)

    # get index of park street in both lines (where the lines intersect)
    start_line_union_sq_index = $subway[:"#{start_line}"].index("union square")
    end_line_union_sq_index = $subway[:"#{end_line}"].index("union square")

    # variable holds total number of stops
    num_of_stops = 0

    # variable holds stops names
    all_stops = [[],[]]

    # count number of stops for the first line until reaching park street station
    # if the start stop is before union square stop in the subway object then increment the start stop index until it becomes larger than union square index
    if start_index < start_line_union_sq_index 
        until start_index == start_line_union_sq_index 
            num_of_stops += 1
            start_index += 1
            all_stops[0].push($subway[:"#{start_line}"][start_index])
        end

    # if the start stop comes after union square stop in the subway object then decrement the start stop index until it becomes less than union square index
    else
        until start_index == start_line_union_sq_index
            num_of_stops += 1
            start_index -= 1
            all_stops[0].push($subway[:"#{start_line}"][start_index])
        end
    end

    # count number of stops for the second line until reaching union square stop
    # if the end stop is before union square stop in the subway object then increment the end stop index until it becomes larger than union square index - 1 (the index before union square) because we already counted this stop in the start stop count
    if end_index < end_line_union_sq_index
        until end_index > end_line_union_sq_index - 1 
            num_of_stops += 1
            all_stops[1].push($subway[:"#{end_line}"][end_index])
            end_index += 1
        end

    # if the end stop comes after union square stop in the subway object then decrement the end stop index until it becomes less than union square index + 1 (the index after union square) because we already counted this stop in the start stop count
    else
        until end_index < end_line_union_sq_index + 1
            num_of_stops += 1
            all_stops[1].push($subway[:"#{end_line}"][end_index])
            end_index -= 1
        end
    end

    puts "You must travel through the following stops on the #{start_line.capitalize} line:"
    print_stops(all_stops[0])
    
    puts "Change at Union Square."

    puts "Your journey continues through the following stops on the #{end_line.capitalize} line:"
    print_stops(all_stops[1].reverse!)

    return num_of_stops
end 



def print_stops (stops)
  
    # print the stops
    delimiter = ', '
    all_stops = ""
    stops.each do |station|
        delimiter = ' and ' unless stops.index(station) != stops.length-2
        delimiter = '.' unless stops.index(station) != stops.length-1

        all_stops = "#{all_stops}#{station.gsub(/\S+/,&:capitalize)}#{delimiter}"
    end
    puts all_stops
end





# Test
# planTrip("N", "Times Square", "sixth", "33rd")



# get user inputs
puts "Enter the start line:"
start_line = gets.chomp
puts "Enter the start stop in words:"
start_stop = gets.chomp
puts "Enter the end line:"
end_line = gets.chomp
puts "Enter the end stop in words:"
end_stop = gets.chomp

# pass the inputs as arguments to the method
planTrip(start_line, start_stop, end_line, end_stop)