defmodule PhoenixApi.Factory do
  use ExMachina.Ecto, repo: PhoenixApi.Repo

  def user_factory do
    %PhoenixApi.User{
      first_name: "Test",
      last_name: "McTest",
      email: sequence(:email, &"email-#{&1}@example.com")
    }
  end
end
