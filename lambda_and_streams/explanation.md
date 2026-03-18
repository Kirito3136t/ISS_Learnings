Lambda Function:

In java the lambda functions are basically a shorter way to represnet functions rather than writing the entire blueprint. 

Generally we use lambda functions so as to make the functionality behaviour at a particular part of code which is generally not reusable

Traditional Way:

Dog dog = new Dog(){
    public void bark(){
        System.out.println("bark");
    }
};

Lambda:

Dog = () -> System.out.println("bark");

'->' is used in a lambda function
Syntax:

(parameters) -> expression

Streams:

Streams are used to process data and not a database which stores data
