# Create arrays of java objects

require 'java'

include_class('java.lang.String') {|package,name| "J#{name}" }

b = Java::byte[5].new
b[0] = 1
b[1] = 2
b[2] = 3
b[3] = 4
b[4] = 5

b.each do |b1|
    puts b1
end


s = JString[3].new
s[0] = 'John'
s[1] = 'Bob'
s[2] = 'Henry'

s.each do |s1|
    puts s1
end
