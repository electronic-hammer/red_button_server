defmodule RedButtonServer.DeployController do
  use RedButtonServer.Web, :controller

  # TODO: more validations
  # ./bin/deploy --host=lxc2.int.avs.io --user=aviasales --env=staging --branch=avs350_tarriffs_gates --haproxy-port=8080
  def index(conn, %{"env" => "beta", "branch" => branch}) do
    json conn, %{ok: true, branch: branch}
  end
  def index(conn, _params) do
    json conn, %{error: "env and branch are required"}
  end
end
