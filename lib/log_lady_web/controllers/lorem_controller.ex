defmodule LogLadyWeb.LoremController do
  use LogLadyWeb, :controller

  alias LogLady.Lorem

  def index(conn, _params) do
    render(conn, "index.json", text: Lorem.get_text)
  end
end
