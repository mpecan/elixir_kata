defmodule RomanNumerals.Converter do
  @moduledoc false

  @rules [{:M,1000}, {:CM,900}, {:D,500}, {:CD,400}, {:C,100}, {:XC,90}, {:L,50}, {:XL,40}, {:X,10}, {:IX,9}, {:V,5}, {:IV,4}, {:I,1}]

  def convert(integer) do
     convert(integer, "")
  end

  def convert(0, result) do
     result
  end

  def convert(integer, result) do
     {sym, val} = Enum.find(@rules, fn{k,v} -> div(integer, v) > 0 end)
     convert(rem(integer, val), result <> String.duplicate(to_string(sym), div(integer,val)))
  end
end