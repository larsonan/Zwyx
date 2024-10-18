# The Zwyx Programming Language

Zwyx is a compiled, imperative, statically-typed programming language. Its syntax is most similar to C, and also draws some inspiration from Ruby, however it is overall very different from either of these languages.

## Zwyx Basics
A Zwyx program is made up of **statements**. A statement is any number of **names**, which are joined together by **operators**. Unlike in C, semicolons are not used to mark the end of a statements. Instead, a name that is not followed by an operator marks the end of a statement.

The characters allowed in names are upper and lower case letters, digits and underscores, and the first character cannot be a digit.

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
**Methods** are indicated with braces {}. They are the equivalent of **functions** in other languages. However, they behave a little differently. In particular, methods do not take an explicit list of *arguments* like they do in most other languages. We will deal with how to pass data into methods a little later. For now, the thing to note is that an **anonymous method**, which is created using braces {} and nothing else, has access to all the variables in the surrounding scope. Additionally, the **return** value of a method is the value of the last statement in the method.

`y~int:{x+2}`

