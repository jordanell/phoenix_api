defmodule PhoenixApi.UserController do
  use PhoenixApi.Web, :controller

  alias PhoenixApi.User

  def index(conn, _params) do
    users = Repo.all(User)

    render conn, "index.json", users: users
  end
end
