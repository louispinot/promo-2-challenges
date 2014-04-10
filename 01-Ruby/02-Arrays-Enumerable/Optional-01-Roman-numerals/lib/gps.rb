=begin
map [
    [V, I]
    [L, X]
    [D, C]
          ]
coord [
    [1, 4]
    [0, 4]
    [1, 0]
          ]




=end



def gps (map,coordinates)

  directions = []

  gps0 = [] # ["1*V  4*I"]
  gps0[0]= coordinates[0][0].times {gps0.push(map[0][0])}
  gps0[0]= coordinates[0][0].times {gps0.push(map[0][0])}
end


map = [["V", "I"], ["L", "X"], ["D", "C"]]
coordinates = [[1, 4], [0, 4], [1, 0]]
gps (map,coordinates)