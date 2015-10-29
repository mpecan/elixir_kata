defmodule RomanNumerals.ConverterTest do
  @moduledoc false
  use ExUnit.Case, async: true

  test "converts 18 to XVIII" do
    assert RomanNumerals.Converter.convert(18) == "XVIII"
  end

  test "converts 2543 to XVIII" do
    assert RomanNumerals.Converter.convert(2543) == "MMDXLIII"
  end

  test "converts 3999 to XVIII" do
    assert RomanNumerals.Converter.convert(3999) == "MMMCMXCIX"
  end
end