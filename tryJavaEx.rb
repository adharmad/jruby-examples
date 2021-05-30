# try exception handling in java
#
require 'java'

include_class('java.lang.String') {|package,name| "J#{name}" }
include_class('java.lang.Exception') {|package,name| "J#{name}" }

begin
    s = JString.new('abc')
    c = s.charAt(10)
    puts c
rescue JException =>  ex
    puts "Java exception #{ex.message}"
end
