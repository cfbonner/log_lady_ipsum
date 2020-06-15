defmodule LogLadyWeb.LoremView do
  use LogLadyWeb, :view

  def render("index.json", %{text: text}) do
    %{text: text}
  end
end
