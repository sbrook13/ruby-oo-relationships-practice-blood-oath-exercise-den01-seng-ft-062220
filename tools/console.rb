require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

a = Cult.new("Rajneeshpuram", "Antelope", 1981, "Baghwan is the best!")
b = Cult.new("Scientology", "New York", 1977, "Time to go clear!")
c = Cult.new("Blue Man Group", "Las Vegas", 1995, "...")
d = Cult.new("Green Man Group", "Las Vegas", 1996, "We hate blue!")

chris = Follower.new("Chris", 26, "Yolo")
dick = Follower.new("Dick", 36, "I need a sign!")
mike = Follower.new("Mike", 18, "I'm impressionable!")

z = BloodOath.new(chris, a, "2017")
ab = BloodOath.new(mike, b,"2014")
chris.join_cult(b, "2020")
dick.join_cult(b, "2011")
# c.recruit_follower(w)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits