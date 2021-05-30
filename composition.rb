require 'java'

class Q
    attr_accessor :xx
    def initialize
        @xx = 100
    end
end

class P
    attr_accessor :x, :q
    def initialize
        @x = 10
        @q = Q.new
    end
end

class A
    attr_accessor :p
    def initialize
        puts 'A'
        @p = P.new
    end

    def foo
        puts 'A->foo()'
    end
end

class B < A
    def initialize
        super
        puts 'B'
    end

    def boo
        foo
        puts p.q.xx
    end
end

b = B.new
b.boo
