defmodule RedButtonServer.DeployController do
  use RedButtonServer.Web, :controller

  alias RedButtonServer.Deploy

  def index(conn, _params) do
    render(conn, "index.json")
  end
end
