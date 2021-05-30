# Bad way of reading files in ruby
require 'java'

include_class 'java.io.FileInputStream'
include_class ('java.io.File') {|package,name| "J#{name}" }
include_class 'java.io.BufferedReader'
include_class 'java.io.FileReader'
include_class 'java.io.IOException'

f = JFile.new 'jdbc1.rb'
br = BufferedReader.new FileReader.new f

line = br.readLine
while line
    print line, "\n"
    line = br.readLine
end

br.close
