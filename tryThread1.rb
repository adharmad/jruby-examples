require 'java'

include_class('java.lang.Thread') {|package,name| "J#{name}" }

class T < JThread
    def initialize
        puts 'T constructor'
    end

    def run
        puts 'T running'
    end
end

t = T.new
t.run


