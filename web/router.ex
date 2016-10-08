defmodule RedButtonServer.Router do
  use RedButtonServer.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", RedButtonServer do
    pipe_through :api
  end
end
