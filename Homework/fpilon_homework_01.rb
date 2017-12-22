cityhash = {'Aurora' => '289',
             'Barrie' => '705',
             'Brampton' => '289',
             'Brantford' => '519',
             'Burlington' => '219',
             'Hamilton' => '905',
             'Kingston' => '613',
             'Kitchener' => '226',
             'London' => '226',
             'Markham' => '289'}

def lookup_areacode(cityhash, city)
  #Make sure the city is in the hash
  if cityhash.include? city
    puts "The area code for #{city} is #{cityhash[city]}"
  else
    puts "#{city} does not exists in the city book."
  end
end
  
def lookup_city(cityhash)
  #Print each city. Doing |k| will print the key as well, so we need |k, v|
  cityhash.each {|k, v| puts k}
end

puts 'Welcome to the city area code look up program!'
loop do 
  print "Do you want to look up a city name? (Y/N)"
  
  # gets.chomp will interrupt the program until the user resolves it
  # So you don't need a variable if you're not going to reuse it
  if gets.chomp != 'Y'
    break;
  else
    puts "Choose a city from below:"
    lookup_city(cityhash)
    lookup_areacode(cityhash, gets.chomp)
  end
end

puts 'Thanks for using the city area code look up program!'

