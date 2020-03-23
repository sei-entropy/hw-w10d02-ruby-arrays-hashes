
# your solution here

def stops_between_stations (line_from, station_from, line_to, station_to)

    lines = {
        Red: ["South Station", "Park Street", "Kendall",
          "Central", "Harvard", "Porter", "Davis", "Alewife"
        ],
        Green: ["Government Center", "Park Street", "Boylston",
          "Arlington", "Copley", "Hynes", "Kenmore"
        ],
        Orange: ["North Station", "Haymarket", "Park Street",
          "State", "Downtown Crossing", "Chinatown",
          "Back Bay", "Forest Hills"
        ],
      }

from_index = lines[line_from.to_sym].index(station_from) 
to_index = lines[line_to.to_sym].index(station_to)

##################### in ONE line  ###################

if line_from == line_to 
      if from_index <= to_index
        stops = to_index - from_index
      else
        stops = from_index - to_index
      end
  
  
##################### in DIFFRENT line  ###################

else 
   park_station_index_to = lines[line_from.to_sym].index("Park Street")
   park_station_index_from = lines[line_to.to_sym].index("Park Street")

   if park_station_index_to <= from_index
        stops_to_park = from_index - park_station_index_to
    else
        stops_to_park = park_station_index_to - from_index
   end
   if park_station_index_from <= to_index
    stops_from_park = to_index - park_station_index_from
    else
        stops_from_park = park_station_index_from - to_index 
   end

    stops = stops_to_park +  stops_from_park 
end
end 

# p stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
# p stops_between_stations('Red', 'Alewife', 'Red', 'South Station') #7
p stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6