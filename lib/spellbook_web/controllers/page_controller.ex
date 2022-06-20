defmodule SpellbookWeb.PageController do
  use SpellbookWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
