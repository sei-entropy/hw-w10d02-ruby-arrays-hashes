
# your solution here
def stops_between_stations(stLine, stStation, endLine, endStation)
    lines = {
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
            "Downtown Crossing",
            "Chinatown",
            "Back Bay",
            "Forest Hills"
        ]
    }
    stops = 0
    if stLine === endLine 
        stops = (
            lines[stLine.to_sym].index(stStation) - lines[endLine.to_sym].index(endStation)
        ).abs
       p "#{stops} stops"
    
else 

        stops = (
            lines[stLine.to_sym].index(stStation) - lines[stLine.to_sym].index("Park Street")
        ).abs
        stops +=(
         lines[endLine.to_sym].index(endStation) - lines[endLine.to_sym].index("Park Street")
        ).abs
     p "#{stops} stops"

end

end

stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') 
stops_between_stations('Red', 'Alewife', 'Red', 'South Station') 
stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') 