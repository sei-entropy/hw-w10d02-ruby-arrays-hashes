
# your solution here


def stops_between_stations(start_line = gets.chomp,start_station=gets.chomp,end_line=gets.chomp , end_station=gets.chomp)
    subway_line= {
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
            "Park Street",
            "State",
            "Downwn Crossing",
            "Chinatown",
            "Back Bay",
            "Forest Hills"
        ]
    }
start_station_index = subway_line[start_line.to_sym].index(start_station)
end_station_index = subway_line[end_line.to_sym].index(end_station)

if start_line == end_line 
   return (start_station_index - end_station_index).abs
end
park_start_index = subway_line[start_line.to_sym].index("Park Street")
park_end_index  = subway_line[end_line.to_sym].index("Park Street")
stops_to_park = (start_station_index - park_start_index).abs
stops_from_park = (park_end_index - end_station_index).abs
total_stops_via_park = stops_to_park + stops_from_park

return total_stops_via_park
end

 p stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') 
 p stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
p stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6