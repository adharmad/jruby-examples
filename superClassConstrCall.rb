require 'java'

class A
    def initialize(a)
        puts a
    end

    def foo
        puts 'A->foo'
    end
end

class B < A
    def initialize
        super('b')
        puts 'B'
    end

    def foo
        super
    end
end

b = B.new
b.foo
