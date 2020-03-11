# frozen_string_literal: true

def c2f(celsius)
  celsius = celsius.to_i if celsius.is_a?(String)
  puts celsius.class
  fahrenheit = (celsius * 9 / 5) + 32
  print "Reading Celsius temperature value #{celsius}from data file...\n
  saving result fahrenheit value #{fahrenheit} to output file 'temp.out'\n"
  fahrenheit
end
c_degree = File.read('temp.dat')
# result = c2f(c_degree)
temp_out = File.new('temp.out', 'w')
temp_out.puts c2f(c_degree)
temp_out.close
