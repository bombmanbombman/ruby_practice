# frozen_string_literal: true

string2 = 'Hello'
object = Object.new
string = 'i am a string'
integer = 100
puts "object:#{object.object_id}
string:#{string.object_id}
integer:#{integer.object_id}"
a = Object.new
b = a
object = b
puts "id a:#{a.object_id}
id b:#{b.object_id}
id object:#{object.object_id}"
string1 = 'Hello'
puts "string_1's id is #{string1.object_id}."
puts "string_2's id is #{string2.object_id}."
true1 = true
true2 = true
puts "true1:#{true1.object_id}
true2:#{true2.object_id}"
object1 = Object.new
object2 = Object.new
puts "object1:#{object1.object_id}
object2:#{object2.object_id}"
puts object2.respond_to? 'talk'
puts object2.methods.sort
p object2.methods.sort
ticket = Object.new
def ticket.date
  '1903-01-02'
end

def ticket.venue
  'Town Hall'
end

def ticket.event
  'Author\'s reading'
end

def ticket.performer
  'Mark Twain'
end

def ticket.seat
  'Second Balcony, row J, seat 12'
end

def ticket.price
  5.50
end
print "information desired:\n"
request = gets.chomp
if ticket.respond_to?(request)
  puts ticket.send(request)
else
  puts 'No such information available'
end
