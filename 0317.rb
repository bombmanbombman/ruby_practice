# frozen_string_literal: false

str = 'Hello'
abc = str
puts abc
str.replace('Goodbye')
puts str
puts abc
boolean = true
efg = boolean
puts boolean
puts efg
boolean = false
puts boolean
puts efg
def change_string(str_identifier)
  str_identifier.replace('New string content!')
end
s = 'Original string content!'
a = s
puts s
puts a
change_string(s)
puts s
puts a
puts '---------------'
t = 'i am t'
t.freeze
b = t
puts t
puts b
puts change_string(t.dup)
puts t.dup
puts t.clone
# puts change_string(t.clone)
puts '-----------------'
u = []
u.push s
u.push t
u.freeze
puts u
c = u[0].replace('i am c')
puts '------after replace------'
puts u
puts c
puts '------------------'
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

def ticket.print_details(*para)
  para.each { |detail| puts "This ticket is #{detail}" }
end
puts "This ticket is for: #{ticket.event}, at
#{ticket.venue}.\n
The performer is #{ticket.performer}.\n
The seat is #{ticket.seat},
and it costs "
# "$#{'%<2f>' % ticket.price}"
