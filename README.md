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

However, there is another way to do this: you can use this operator to create an anonymous method which takes a struct as its **context**:

```
p.{
    x:1
    y:4
}
```

**Context** is the way to pass data into a method in Zwyx. When an anonymous method has a context, the compiler searches inside the context when it's trying to resolve variable names.

You can access variables names this way in the same statement that a struct instance is defined:

```
p~Point.{
    x:1
    y:4
}
```

You might be wondering what happens if there is already a separate variable outside the anonymous method with the same name as one inside the context. There is a strict algorithm for resolving variable names in order to handle name collisions. The algorithm is as follows. first, search inside the current scope, then the surrounding scope, then the scope surrounding that scope, etc., *then*, return to the current scope and traverse each surrounding scope again, this time searching inside the *context* of each scope if it has one. Here is an illustration:

```
a~int
b.{
    c~int
    d~int
    e.{
        f~int
        g~int
    }
}
```

When resolving a variable name inside the innermost method, here is order in which methods and contexts will be searched:
1. The method itself, containing f and g
2. The method containing c and d
3. The method containing a
4. The struct e
5. The struct b

This means that, similar to many other languages like C, a variable defined in an inner scope will "shadow" a variable with the same name defined in an outer scope. However, there is an additional rule that a variable defined in an outer scope will "shadow" a variable with the same name in an inner scope's *context*. So, how do you refer to that same-named variable in the context? You can use the $ symbol, which is a shorthand way to refer to the context:

```
p~Point
x~int:7
p.{
    $.x:x
}
```

There are two variables named "x" here: One in the outer scope, and the other inside the struct p. On the fourth line, the variable name on the right will resolve to the x in the outer scope. However, to find the variable name on the left, p will be searched immediately, since the name here is a subunit of $, the context, which is p. Therefore, this name will resolve to the one in p instead.

You can refer to outer contexts by suffixing $ with . and an integer. This:

```
a.{
    b.{
        $.2.x:x
    }
}
```

is the same as this:

`a.x:b.x`

$.1 refers to the innermost context that can be found (so it's exactly the same as $), $.2 refers to the *second* innermost context, etc.

One final thing to note is something called **anonymous instantiation**. This happens when a struct type name is used without the define operator or an instance name:

```
Point.{
    x:1
    y:5
}
```

When this happens, the struct's lifetime only lasts as long as the anonymous method that has it as a context. The struct and its members cannot be referred to outside of this. Here, nothing useful is occurring; x and y are set and then the struct is immediately deallocated. However, there are a number of important uses for this, which we will be discussing very soon.

## Default Methods
The **default method** is a special method that can be defined in a struct, whose context is that struct. It is represented using the ; character.

```
print_sum~{
    a~int
    b~int
    ;~{
        print.d:{a+b}
    }
}
```

This is how functions with arguments can be defined. To call this function, create an anonymous instance of print_sum, and then, in the associated anonymous method, set the arguments to the correct values and call the default method.

`print_sum.{a:1 b:4 ;}`

Note that the ; character is necessary. Without it, the arguments will be set but then nothing will actually happen.

