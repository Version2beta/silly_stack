defmodule Stack do
  @spec empty?(list()) :: boolean()
  def empty?([] = _stack), do: true
  def empty?([_h | _t] = _stack), do: false

  @spec push(term(), list()) :: {:ok, list()}
  def push(stack, element) when is_list(stack), do: {:ok, [element | stack]}

  def push!(stack, element) when is_list(stack), do: push(stack, element) |> bangify!

  @spec pop(list()) :: {:ok, {any(), list()}} | {:error, String.t()}
  def pop([] = _stack), do: {:error, "empty stack"}
  def pop([h | t] = _stack), do: {:ok, {h, t}}

  def pop!(stack), do: pop(stack) |> bangify!

  @spec peek(list()) :: {:ok, {any(), list()}} | {:error, String.t()}
  def peek([] = _stack), do: {:error, "empty stack"}
  def peek([h | t] = _stack), do: {:ok, {h, [h | t]}}

  def peek!(stack), do: peek(stack) |> bangify!

  defp bangify!({:error, error}), do: raise ArgumentError, message: error
  defp bangify!({:ok, result}), do: result
end
