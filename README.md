# The Zwyx Programming Language

Zwyx is a compiled, imperative, statically-typed programming language. Its syntax is most similar to C, and also draws some inspiration from Ruby, however it is overall very different from either of these languages.

## Zwyx Basics
A Zwyx program is made up of **statements**. A statement is any number of **names**, which are joined together by **operators**. Unlike in C, semicolons are not used to mark the end of a statements. Instead, a name that is not followed by an operator marks the end of a statement.

The characters allowed in names are upper and lower case letters, digits and underscores, and the first character cannot be a digit.

Like C, Zwyx is a **free-format** language. Whitespace (spaces, tabs and newlines) is used to separate statements and is otherwise ignored.

## Variable Declaration
The **define** operator (~) is used to declare variables.

Declaring an integer variable named "x":

`x~int`

## Assignment
The **insertion** operator (:) is used for assignment.

Assigning the value 5 to x:

`x:5`

Declaration and assignment can occur in the same statement:

`x~int:5`

## Methods
**Methods** are indicated with braces {}. They are the equivalent of **functions** in other languages. However, they behave a little differently. In particular, methods in Zwyx do not take an explicit list of *arguments* like they do in most other languages. We will deal with how to pass data into methods a little later. For now, the thing to note is that an **anonymous method**, which is created using braces {} and nothing else, has access to all the variables in the surrounding scope. Additionally, the **return** value of a method is the value of the last statement in the method.

Declare an integer named "y" and assign it the value of x plus 2:

`y~int:{x+2}`

Note that the use of the braces is actually *necessary* in this example. The reason is that in Zwyx, the insertion operator actually has *higher* precedence than the addition operator. The rationality behind this will be given later. For now, note that the following will not work as intended:

`y~int:x+2`

This will actually set y to the value of x, *then* add the value of x to 2 (and return that value if this is the final statement in the method, otherwise discard it.)

Note that since any pair of braces on its own is considered a method, any pair of braces can contain more than one statement. The following is perfectly valid:

`y~int:{z~int:2 x+z}`

This declares an integer named "z" within the method, sets its value to 2, and then returns the sum of x and z, and sets the value of y to that sum.

Like in C, braces also define **scope**. This means that z only has meaning within this anonymous method, and any reference to it elsewhere will give a compiler error.

One final thing to note regarding the operators is that standard order of operations is not yet implemented. Currently the operators are simply resolved left to right, so the following:

`y~int:{2+4*6}`

will actually set y to 36, rather than 26.

## Structs
A **struct** is a compound unit containing any number of other data units. The following defines a struct named "Point" containing two members named "x" and "y":

```
Point~{
    x~int
    y~int
}
```

This is the one special construction where braces do not indicate a method. This construction merely defines a **type**. To actually use this struct an **instance** of it must be created. The following creates an instance of the struct Point named "p":

`p~Point`

You can use the **subunit** operator (.) to access a struct instance's members:

```
p.x:1
p.y:4
```

## Default Methods
The **default method** is a special method that can be defined in a struct.

