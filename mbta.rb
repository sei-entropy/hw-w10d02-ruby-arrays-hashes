p "test"
# your solution here
def stops_between_stations

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

def stops_between_stations (start_line , start_station , end_line , end_station)

    start_station_x = subway_line[start_line].index(start_station)
    end_station_x = subway_line[end_line].index(end_station)

    if start_line === end_line
         (start_station_x - end_station_x ).abs

    else

park_startY= subway_line[start_line].index("Park Street")
park_endY= subway_line[end_line].index("Park Street")

stops_to_park = (start_station_x - park_startY ).abs
stop_from_park = (park_endY -  end_station_x ).abs

totsl_stops= stops_to_park + stop_from_park
end
end

