

def stops_between_stations(start_line, start_station, end_line, end_station)
    
    # add all the routs 
    source_of_routes= {
Red: [
    "South Station",
    "Park Street",
    "Kendall",
    "Central",
    "Harvard",
    "Porter",
    "Davis",
    "Alewife"
    ],
Green: [
    "Government Center",
    "Park Street",
    "Boylston",
    "Arlington",
    "Copley",
    "Hynes",
    "Kenmore"
],

Orange: [
     "North Station",
     "Haymarket",
     "State",
     "Park Street",
     "Chinatown",
     "Downwn Crossing",
     "Back Bay",
     "Forest Hills"
        ]
    }
    

# count the index of start and end station using "index" method  
start_station_index = source_of_routes[start_line.to_sym].index(start_station)
end_station_index = source_of_routes[end_line.to_sym].index(end_station)

# condition to test if the start line and end line are the same 
if start_line == end_line 
   return (start_station_index - end_station_index).abs
end

# identify start of park index 
park_start_index = source_of_routes[start_line.to_sym].index("Park Street")

# identify end of park index 
park_end_index  = source_of_routes[end_line.to_sym].index("Park Street")

# calculate the number of stops to park 
stops_to_park = (start_station_index - park_start_index).abs

# calculate the number of stops from park 
stops_from_park = (park_end_index - end_station_index).abs

# calculate the total number of stops by park 
total_stops_by_park = stops_to_park + stops_from_park

return total_stops_by_park
end

# print number of stops between stations 
 puts stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') 
 puts stops_between_stations('Red', 'Alewife', 'Red', 'South Station') 
 puts stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') 