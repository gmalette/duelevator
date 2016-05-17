defmodule Duelevator.PageController do
  use Duelevator.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
