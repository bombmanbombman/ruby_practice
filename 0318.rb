# frozen_string_literal: false

CONSTANT_A = 'a'.freeze
CONSTANT_A = 'b'.freeze
puts CONSTANT_A
puts '---------------------'
# this is for example
class Person
  def setting_name(string)
    puts "Setting person's name..."
    @name = string
  end

  def getting_name
    puts "Returning the person's name..."
    @name
  end
end
joe = Person.new
joe.setting_name('Joe')
puts joe.getting_name
puts '------------------'
# example 3.2
# class Ticket
#   def initialize(venue, date)
#     @venue = venue
#     @date = date
#   end
#
#   attr_reader :venue
#
#   attr_reader :date
# end
# th = Ticket.new('Town Hall', '2013-11-12')
# cc = Ticket.new('Convention Center', '2014-12-13')
# puts "We've created two tickets."
# puts "The first is for a #{th.venue} event on #{th.date}."
# puts "The second is for an event on #{cc.date} at #{cc.venue}."
puts '------------------------'
# 3.3 example
class Ticket
  def initialize(venue, date)
    @venue = venue
    @date = date
  end

  def setting_price(amount)
    @price = amount
  end

  attr_reader :price
end
ticket = Ticket.new('Town Hall', '2013-11-12')
ticket.set_price(63.00)
puts "The ticket costs $#{'%.2f' % ticket.price}."
ticket.set_price(72.50)
puts "Whoops -- it just went up. It now costs
$#{'%.2f' % ticket.price}."
