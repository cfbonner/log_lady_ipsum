defmodule LogLadyWeb.LoremController do
  use LogLadyWeb, :controller

  alias LogLady.Lorem

  def index(conn, %{"paragraphs" => paragraphs}) do
    {count, _} = Integer.parse(paragraphs)
    text = Lorem.get_paragraphs(count)
    render(conn, "index.json", text: text)
  end

  def index(conn, %{"sentences" => sentences}) do
    {count, _} = Integer.parse(sentences)
    text = Lorem.get_sentences(count)
    render(conn, "index.json", text: text)
  end

  def index(conn, %{"words" => words}) do
    {count, _} = Integer.parse(words)
    text = Lorem.get_words(count)
    render(conn, "index.json", text: text)
  end

  def index(conn, _params) do
    render(conn, "index.json", text: Lorem.get_text)
  end
end
