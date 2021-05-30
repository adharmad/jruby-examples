require 'java'

include_class 'java.lang.reflect.Constructor'
include_class 'java.lang.reflect.Field'
include_class ('java.lang.reflect.Method') {|package,name| "J#{name}" }
include_class 'java.lang.reflect.Member'
include_class 'java.lang.Package'
include_class('java.lang.Class') {|package,name| "J#{name}" }

def main(cls, what)

    c = JClass.forName(cls)
    puts c.getCanonicalName()
    p = c.getPackage()
    put p.getName()

    case what
        when 'CONSTRUCTOR'
            printMembers(c.getConstructors(), what)
        when 'FIELD'
            printMembers(c.getFields(), what)
        when 'METHOD'
            printMembers(c.getMethods(), what)
        when 'CLASS'
            printClasses(c)
        when 'ALL'
            printMembers(c.getConstructors(), what)
            printMembers(c.getFields(), what)
            printMembers(c.getMethods(), what)            
            printClasses(c)            
    end
end

def printMembers(mbrs, what)
    puts what
    mbrs.each do |mbr|
        puts mbr.toGenericString()
    end
end

def printClasses(c)
    puts 'CLASSES'
    clss = c.getClasses()
    clss.each do |cls|
        puts cls.getCanonicalName()
    end
end


cls = ARGV[0]
what = ARGV[1]
main(cls, what)
