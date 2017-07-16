defmodule PhoenixApi.UserView do
  use PhoenixApi.Web, :view

  def render("index.json", %{users: users}) do
    %{
      users: Enum.map(users, &user_json/1)
    }
  end

  def render("show.json", %{user: user}) do
    %{
      user: user_json(user)
    }
  end

  def user_json(user) do
    %{
      first_name: user.first_name,
      last_name: user.last_name,
      email: user.email,
      inserted_at: user.inserted_at,
      updated_at: user.updated_at
    }
  end
end