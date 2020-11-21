defmodule ChessServerWeb.PageController do
  use ChessServerWeb, :controller

  def index(conn, _params) do
    html(conn, File.read!("./priv/static/index.html"))
  end
end
