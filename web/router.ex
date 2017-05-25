defmodule Acceptancetesting.Router do
  use Acceptancetesting.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Acceptancetesting do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/some_page", PageController, :some_page
    resources "/todos", TodoController
  end

  # Other scopes may use custom stacks.
  # scope "/api", Acceptancetesting do
  #   pipe_through :api
  # end
end
