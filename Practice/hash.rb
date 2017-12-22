# Hash
# They are like associative arrays in Java
my_details = {'name' => 'Francis', 'favcolor' => 'red'}
puts my_details['name']
puts my_details['favcolor']

z = {:a => 1,:b => 2,:c => 3,:d => 4,:e => 5}
z.each {|k, v| puts v}
z.each {|k, v| puts v.odd?}