defmodule RedButtonServer.Router do
  use RedButtonServer.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", RedButtonServer do
    pipe_through :api

    get "/deploy", DeployController, :index
  end
end
