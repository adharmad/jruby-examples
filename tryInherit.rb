require 'java'

class A
    def initialize
        puts 'A'
    end

    def foo
        puts 'A->foo'
    end
end

class B << A
    def initialize
        #super
        puts 'B'
    end

    def foo
        #super
        puts 'B->foo'
    end
end

b = B.new
b.foo
