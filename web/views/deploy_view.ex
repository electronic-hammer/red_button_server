defmodule RedButtonServer.DeployView do
  use RedButtonServer.Web, :view

  def render("index.json", _) do
    %{ok: true}
  end
end
