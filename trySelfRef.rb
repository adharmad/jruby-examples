require 'java'

class A
    def initialize
        puts 'A'
    end

    def boo(b)
        b.foo
    end
end

class B
    attr_accessor :a

    def initialize
        @a = A.new
    end
    
    def foo
        puts 'B->foo()'
    end

    def passSelf
        @a.boo(self)
    end
end

b = B.new
b.passSelf
