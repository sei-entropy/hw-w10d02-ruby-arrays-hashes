
# your solution here

def stops_between_stations(start_line, start_station, end_line, end_station)
    # Construct basic lines object to hold stations for each line (Red, Green and Orange)
    lines = {
        "Red" => [
            "South Station",
            "Park Street",
            "Kendall",
            "Central",
            "Harvard",
            "Porter",
            "Davis",
            "Alewife"
        ],
        "Green" => [
            "Government Center",
            "Park Street",
            "Boylston",
            "Arlington",
            "Copley",
            "Hynes",
            "Kenmore"
        ],
        "Orange" => [
            "North Station",
            "Haymarket",
            "Park Street",
            "State",
            "Downtown Crossing",
            "Chinatown",
            "Back Bay",
            "Forest Hills"
        ]
    }


    # If the user started and ended in the same station at the same line, that means they had 0 stops
    return 0 if (start_line == end_line && start_station == end_station)

    # Get indices of both start and end stations to calculate stops using them
    index_of_start_station = lines[start_line].index(start_station)
    index_of_end_station = lines[end_line].index(end_station)

    # In the case the trip is on the same line, then the number of stops would be the direct
    # difference between both indices for start and end stations
    return (index_of_start_station - index_of_end_station).abs if(start_line == end_line)

    # The last case is if the start and end station are on different lines.
    # Since all the lines intersect at "Park Street", then we calculate the stops
    # from the first station until "Park Street" and add it to the stops from 
    # "Park Street" until the end station

    # Get the index of "Park Street" for both start and end lines
    index_of_park_street_start = lines[start_line].index("Park Street")
    index_of_park_street_end = lines[end_line].index("Park Street")

    # Claculate the stops from start station until "Park Street"
    stops_from_start_to_park = (index_of_start_station - index_of_park_street_start).abs
    # Claculate the stops from "Park Street" until the end station
    stops_from_park_to_end = (index_of_park_street_end - index_of_end_station).abs

    # Return the sum of stops between the two stations on different lines (Implicit return)
    stops_from_start_to_park + stops_from_park_to_end
end

puts stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
puts stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
puts stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6