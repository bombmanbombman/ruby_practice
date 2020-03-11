# frozen_string_literal: true

def f2c(fahrenheit)
  fahrenheit = fahrenheit.to_i if fahrenheit.is_a?(String)
  puts fahrenheit.class
  celsius = (fahrenheit * 5 - 160) / 9
  print "Reading fahrenheit temperature value #{fahrenheit} from data file:
  'temp.out'\n
  saving result celsius value #{celsius} to output file:'temp2.out'\n"
  celsius
end
f_degree = File.read('temp.out')
# result = c2f(c_degree)
temp_out = File.new('temp2.out', 'w')
temp_out.puts f2c(f_degree)
temp_out.close
