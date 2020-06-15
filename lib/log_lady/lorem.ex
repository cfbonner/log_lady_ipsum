defmodule LogLady.Lorem do
  @moduledoc"""
  The Lorem context
  """

  alias LogLady.Lorem.Text
  
  def get_text do
    Text.all
  end

  def get_words(count) do
    Text.all
    |> String.split()
    |> Enum.take(count)
    |> Enum.join(" ")
  end

  def get_sentences(count) do
    get_text
    |> String.split(".")
    |> Enum.take(count)
    |> Enum.join(".")
  end

  def get_paragraphs(count) do
    get_text
    |> String.split("\n\n")
    |> Enum.take(count)
    |> Enum.join("\n")
  end
end
