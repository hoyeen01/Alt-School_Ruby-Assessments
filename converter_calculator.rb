def convert(parameter, value, from, to)
case parameter
when :weight
  if from == :kg
    pound = value * 2.20462
    puts "#{pound.round(2)} pounds"
  elsif from == :pounds
    kg = value / 2.20
    puts "#{kg.round(2)} kg"
  else
    puts 'please provide a valid weight from value'
  end
when :distance
  if from == :miles
    km = value * 1.60934
    puts "#{km.round(2)} km"
  elsif from == :km
    mile = value / 1.60934
    puts "#{mile.round(2)} miles"
  else
    puts 'please a provide a valid distance from value'
  end
when :temperature
  if from == :celsius
    kelvin = value + 273.15
    puts '#{kelvin} kelvin'
  elsif from == :kelvin
    celsius = value - 273.15
    puts ' # {celsius} celsius'
  else
    puts 'provide a valid value'
  end
else
  puts 'parameter can only be weight, distance or temperature'
end
end
#convert(:weight, 2, :kg, :pounds)
#convert(:weight, 40, :pounds, :kg)

#convert(:distance, 20, :miles, :km)
#convert(:distance, 3, :km, :miles) 

#convert(:temperature, 10, :celsius, :kelvin)
#convert(:temperature, 15, :kelvin, :celsius)

#convert(:weather, 52, :celsius, :kelvin)