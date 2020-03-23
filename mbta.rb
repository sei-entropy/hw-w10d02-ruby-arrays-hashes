
# your solution here


def stops_between_stations(line_start,start_station,line_end,stop_station)

    lines = {
        Red: [
            'South Station',
             'Park Street',
             'Kendall',
            'Central',
            'Harvard', 
            'Porter', 
            'Davis', 
            'Alewife'
        ],
        Green: [
            'Government Center', 
            'Park Street', 
            'Boylston', 
            'Arlington', 
            'Copley', 
            'Hynes', 
            'Kenmore'
        ],
        Orange: [
            'North Station', 
            'Haymarket', 
            'Park Street', 
            'State', 
            'Downtown Crossing', 
            'Chinatown', 
            'Back bay', 
            'Forest Hills'
        ]
    }
    stops = 0
    
       if line_start == line_end
        stops = (lines[line_start.to_sym].index(start_station) - lines[line_end.to_sym].index(stop_station) ).abs
    
       elsif line_start != line_end
        stops =  (lines[line_start.to_sym].index(start_station) - lines[line_start.to_sym].index('Park Street') ).abs
        stops += (lines[line_end.to_sym].index(stop_station) -  lines[line_end.to_sym].index('Park Street') ).abs 
    
       end
       puts " #{stops} Stops "
    end
    
    stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
    stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
    stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6
    
    
    # puts " the start Line "
    # line_start = gets
    # puts " the End Line "
    # line_end = gets
    # puts " the stStation Line "
    # start_station = gets
    # puts " the endStation Line "
    # stop_station=gets
    
    # puts stops_between_stations(line_start,start_station,line_end,stop_station)