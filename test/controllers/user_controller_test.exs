defmodule PhoenixApi.UserControllerTest do
  use PhoenixApi.ConnCase

  import PhoenixApi.Factory

  test "#index renders a list of users" do
    conn = build_conn()
    user = insert(:user)

    conn = get conn, user_path(conn, :index)

    assert json_response(conn, 200) == %{
      "users" => [%{
        "first_name" => user.first_name,
        "last_name" => user.last_name,
        "email" => user.email,
        "inserted_at" => Ecto.DateTime.cast!(user.inserted_at) |> Ecto.DateTime.to_iso8601,
        "updated_at" => Ecto.DateTime.cast!(user.updated_at) |> Ecto.DateTime.to_iso8601
      }]
    }
  end
end
