package pack1;

public class Foo {
    public Foo() {
        System.out.println("Default constructor!");
    }

    public Foo(String s1) {
        System.out.println("Overloaded constructor 1! ==> " + s1);
    }

    public Foo(String s1, String s2) {
        System.out.println("Overloaded constructor 2! ==> " + s1 + "," + s2);
    }

    public void foo() {
        System.out.println("Foo -> foo()"); 
    }

    public void boo() {
        System.out.println("Foo -> boo()"); 
    }
}
