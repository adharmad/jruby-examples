require 'java'

class A
    def initialize
        puts "A"
    end

    def foo
        puts "foo"
    end
end

a = A.new
a.foo
