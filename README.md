# Stack

A simple implementation of a stack.

## Demonstration

```
iex(1)> [] |> Stack.push(0)
{:ok, [0]}
iex(2)> [] |> Stack.push!(0)
[0]
iex(3)> [] |> Stack.push!(0) |> Stack.push!(1)
[1, 0]
iex(5)> v(3) |> Stack.pop!
{1, [0]}
iex(6)> v(3) |> Stack.peek!
{1, [1, 0]}
iex(7)> [] |> Stack.peek!
** (ArgumentError) empty stack
    (stack) lib/stack.ex:23: Stack.bangify!/1
```
