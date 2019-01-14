defmodule Stack do
  def empty?([]), do: true
  def empty?([_h | _t]), do: false

  def push(element, stack) when is_list(stack), do: {:ok, [element | stack]}

  def pop([]), do: {:error, :empty_stack}
  def pop([h | t]), do: {:ok, {h, t}}

  def peek([]), do: {:error, :empty_stack}
  def peek([h | t]), do: {:ok, {h, [h | t]}}
end
