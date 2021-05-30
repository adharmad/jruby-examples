# Use ruby hashes instead....
require 'java'

include_class 'java.util.HashMap'

rh = {
    'e' => 'f',
    'g' => 'h'
}

#h1 = HashMap.new(rh)
h1 = HashMap.new({
    'aa' => 'bb',
    'cc' => 'dd'
})
h1.put('a','b')
h1.put('c','d')

puts h1

