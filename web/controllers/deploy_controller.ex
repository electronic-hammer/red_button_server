defmodule RedButtonServer.DeployController do
  use RedButtonServer.Web, :controller

  # TODO: more validations
  def index(conn, %{"env" => "beta", "branch" => branch}) do
    json conn, %{ok: true, branch: branch}
  end
  def index(conn, _params) do
    json conn, %{error: "env and branch are required"}
  end
end
