defmodule Acceptancetesting.PageController do
  use Acceptancetesting.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def some_page(conn, _params) do
    render conn, "some_page.html"
  end
end
