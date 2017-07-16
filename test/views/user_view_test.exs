defmodule PhoenixApi.UserViewTest do
  use PhoenixApi.ModelCase

  import PhoenixApi.Factory

  alias PhoenixApi.UserView

  test "user_json" do
    user = insert(:user)

    rendered_user = UserView.user_json(user)

    assert rendered_user == %{
      first_name: user.first_name,
      last_name: user.last_name,
      email: user.email,
      inserted_at: user.inserted_at,
      updated_at: user.updated_at
    }
  end

  test "index.json" do
    user = insert(:user)

    rendered_users = UserView.render("index.json", %{users: [user]})

    assert rendered_users == %{
      users: [UserView.user_json(user)]
    }
  end

  test "show.json" do
    user = insert(:user)

    rendered_user = UserView.render("show.json", %{user: user})

    assert rendered_user == %{
      user: UserView.user_json(user)
    }
  end
end
