defmodule LogLady.Lorem do
  @moduledoc"""
  The Lorem context
  """

  alias LogLady.Lorem.Text

  @ignored_words ["i", "and", "the", "this", "is", "a", "of", "there", "it"]
  
  def get_text do
    Text.all
  end

  def get_words(count) do
    get_text()
    |> String.replace(["\n", ".", ",", "?", "!"], "")
    |> String.split()
    |> Enum.uniq()
    |> Enum.filter(fn n -> !Enum.member?(@ignored_words, String.downcase(n)) end)
    |> Enum.map(&String.downcase/1)
    |> Enum.shuffle()
    |> Enum.take(count)
    |> Enum.join(" ")
    |> String.capitalize()
  end

  def get_sentences(count) do
    get_text()
    |> String.split([".\ ", "!\ ", "?\ "])
    |> Enum.shuffle()
    |> Enum.take(count)
    |> Enum.join(".\ ")
    |> String.replace("\n", " ")
    |> Kernel.<>(".")
  end

  def get_paragraphs(count) do
    get_text()
    |> String.split("\n\n")
    |> Enum.shuffle()
    |> Enum.take(count)
    |> Enum.join("\n\n")
  end
end
