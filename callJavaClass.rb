require 'java'

include_class 'pack1.Foo'
include_class 'pack1.Boo'

foo1 = Foo.new
foo1.foo
foo1.boo

boo1 = Boo.new
boo1.boohoo

