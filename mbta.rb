# Initialize an object that contains all the lines along with their stations as arrays
$stations = {
    red: %w(south\ station park\ street kendall central harvard porter davis alewife),
    green: %w(government\ center park\ street boylston arlington copley hynes kenmore),
    orange: %w(north\ station haymarket park\ street state downtown\ crossing chinatown back\ bay forest\ hills),
}


def stops_between_stations(start_line, start_station, end_line, end_station)
    # lower case all parameters for later validation
    start_line.downcase!
    end_line.downcase!
    start_station.downcase!
    end_station.downcase!

    # Check if both input lines exist or not
    unless !$stations[:"#{start_line}"].nil? && !$stations[:"#{end_line}"].nil? 
        puts "Invalid inputs"
        return
    end

    # Check if both input stations exist or not
    unless $stations[:"#{start_line}"].include?(start_station) || $stations[:"#{end_line}"].include?(end_station) 
        puts "Invalid inputs"
        return
    end

    # Two conditions:   
    unless start_line != end_line
        # 1. start_line == end_line >> same line
        stops = same_line(start_line, start_station, end_station)
        # if the returned value == -1 >> one or more of the values is invalid
        puts "#{stops} stops in total." unless stops == -1
    else
        # 2. start_line != end_line >> different lines
        stops = different_lines(start_line, start_station, end_line, end_station)
        # if the returned value == -1 >> one or more of the values is invalid
        puts "#{stops} stops in total." unless stops == -1
    end
end


def same_line(line, start_station, end_station)
    # get index of both stations from station's array, if the station does exist it returns the index, else returns nil
    start_index = $stations[:"#{line}"].index(start_station)
    end_index = $stations[:"#{line}"].index(end_station)


    # variable holds total number of stops between stations
    num_of_stops = 0
    # variable holds stops names
    stops = []

    
    # if start station == end station >> same station, won't execute following statements and num_of_stops value won't change >> 0
    # push the name of the station to the stops array 
    if(start_index == end_index)
    stops.push($stations[:"#{line}"][start_index])

    # if start station is before end station in the array >> loop from start to end
    elsif (start_index < end_index)
        # loop until the start_index reaches the end_index
        until (start_index == end_index)
            # increment num_of_stops
            num_of_stops += 1

            stops.push($stations[:"#{line}"][start_index])

            # increment the iterator
            start_index += 1
        end 

            # push the end station
            stops.push($stations[:"#{line}"][end_index])

    # if start station is after end station in the array >> loop from end to start
    elsif (start_index > end_index)
        # loop until the start_index reaches the end_index
        until (start_index == end_index)
            # increment num_of_stops
            num_of_stops += 1

            stops.push($stations[:"#{line}"][start_index])

            # decrement the iterator
            start_index -= 1
        end
        # push the end station
        stops.push($stations[:"#{line}"][end_index])
    end

    puts "You must travel through the following stops on the #{line.capitalize} line:"
    print_stops(stops)

    return num_of_stops
end



def different_lines(start_line, start_station, end_line, end_station)
    # get index of both stations from station's array, if the station does exist it returns the index, else returns nil
    start_index = $stations[:"#{start_line}"].index(start_station)
    end_index = $stations[:"#{end_line}"].index(end_station)

    # get index of park street in both lines (where the lines intersect)
    start_line_park_st_index = $stations[:"#{start_line}"].index("park street")
    end_line_park_st_index = $stations[:"#{end_line}"].index("park street")

    # variable holds total number of stops between stations
    num_of_stops = 0

    # variable holds stops names
    all_stops = [[],[]]

    # count number of stops for the first line until reaching park street station
    # if the start station is before park street station in the stations object then increment the start station index until it becomes larger than park street index
    if start_index < start_line_park_st_index
        until start_index > start_line_park_st_index
            num_of_stops += 1
            all_stops[0].push($stations[:"#{start_line}"][start_index])
            start_index += 1
        end

    # if the start station comes after park street station in the stations object then decrement the start station index until it becomes less than park street index
    else
        until start_index < start_line_park_st_index
            num_of_stops += 1
            all_stops[0].push($stations[:"#{start_line}"][start_index])
            start_index -= 1
        end
    end

    # count number of stops for the second line until reaching park street station
    # if the end station is before park street station in the stations object then increment the end station index until it becomes larger than park street index - 1 (the index before park street) because we already counted this stop in the start station count
    if end_index < end_line_park_st_index
        until end_index > end_line_park_st_index - 1 
            num_of_stops += 1
            all_stops[1].push($stations[:"#{end_line}"][end_index])
            end_index += 1
        end

    # if the end station comes after park street station in the stations object then decrement the end station index until it becomes less than park street index + 1 (the index after park street) because we already counted this stop in the start station count
    else
        until end_index < end_line_park_st_index + 1
            num_of_stops += 1
            all_stops[1].push($stations[:"#{end_line}"][end_index])
            end_index -= 1
        end
    end

    puts "You must travel through the following stops on the #{start_line.capitalize} line:"
    print_stops(all_stops[0])
    
    puts "Change at Park Street."

    puts "Your trip continues through the following stops on the #{end_line.capitalize} line:"
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
# stops_between_stations('Red', 'Alewife', 'Red', 'Alewife')
# stops_between_stations('Red', 'Alewife', 'Red', 'South Station')
# stops_between_stations('Red', 'South Station', 'Orange', 'Back bay')
# stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') 


# get user inputs
puts "Enter the start line:"
start_line = gets.chomp
puts "Enter the start station:"
start_station = gets.chomp
puts "Enter the end line:"
end_line = gets.chomp
puts "Enter the end station:"
end_station = gets.chomp

# pass the inputs as arguments to the method
stops_between_stations(start_line, start_station, end_line, end_station)