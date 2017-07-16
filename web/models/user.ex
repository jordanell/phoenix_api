defmodule PhoenixApi.User do
  use PhoenixApi.Web, :model

  schema "users" do
    field :first_name
    field :last_name
    field :email

    timestamps
  end
end
