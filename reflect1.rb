# try java reflection

require 'java'

include_class('java.lang.Class') {|package,name| "J#{name}" }
include_class('java.lang.String') {|package,name| "J#{name}" }
include_class 'java.lang.System'

testStr = JString.new 'test'
c = testStr.getClass()
print c, "\n"



