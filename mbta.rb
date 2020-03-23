
# your solution here
def stops_between_stations(line_s,start_s,line_e,stop_s)
 
lines = {
    Red: ['South Station', 'Park Street', 'Kendall', 'Central', 'Harvard', 'Porter', 'Davis', 'Alewife'],
    Green: ['Government Center', 'Park Street', 'Boylston', 'Arlington', 'Copley', 'Hynes', 'Kenmore'],
    Orange: ['North Station', 'Haymarket', 'Park Street', 'State', 'Downtown Crossing', 'Chinatown', 'Back bay', 'Forest Hills']
}
count = 0
add_to_count = 0
startS = lines[line_s.to_sym].index(start_s)
stopF = lines[line_e.to_sym].index(stop_s)
startPark = lines[line_s.to_sym].index('Park Street');
stopPark = lines[line_e.to_sym].index('Park Street');
   if line_s == line_e
      count = (startS - stopF).abs
      
   elsif line_s != line_e
     count =  (startS - startPark).abs
     count += (stopF -  stopPark ).abs 
   end
   puts count
end
stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6


