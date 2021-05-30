# create classes

class A
    attr_accessor :i, :s
    def initialize
        @i = 10
        @s = '123'
    end

    def to_s
        @i.to_s + ' ' + @s
    end
end

a = A.new
puts a.to_s
