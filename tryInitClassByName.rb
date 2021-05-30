require 'java'

class A
    def initialize
        puts 'A'
    end

    def foo
        puts 'A->foo()'
    end

end

str = 'A.new'
a = eval str
a.foo
