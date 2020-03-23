# your solution here
def stops_between_stations(startline,startsation,endline,endstation)
    train = {
        Red:['South Station', 'Park Street', 'Kendall', 'Central', 'Harvard', 'Porter', 'Davis', 'Alewife'],
        Green:['Government Center', 'Park Street', 'Boylston', 'Arlington', 'Copley', 'Hynes', 'Kenmore'],
        Orange:['North Station', 'Haymarket', 'Park Street', 'State', 'Downtown Crossing', 'Chinatown', 'Back Bay', 'Forest Hills']
    }
    p ((train[startline.to_sym].index(startsation) -  train[startline.to_sym].index("Park Street").abs) + (train[endline.to_sym].index("Park Street") - train[endline.to_sym].index(endstation) )).abs
  
  
  
  end
  stops_between_stations('Red', 'Alewife', 'Red', 'Alewife')
  stops_between_stations('Red', 'Alewife', 'Red', 'South Station')
  stops_between_stations('Red', 'South Station', 'Green', 'Kenmore')
  