# frozen_string_literal: true

def c2f(celsius = 100)
  celsius = celsius.to_i if celsius.is_a?(String)
  puts celsius.class
  fahrenheit = (celsius * 9 / 5) + 32
  print "The F degree of #{celsius} is #{fahrenheit}. \n"
end
print 'please input celsius as int', "\n"
c_degree = gets.chomp
print "the temperature is #{c_degree} and datatype is #{c_degree.class}.\n"
c2f(c_degree)
