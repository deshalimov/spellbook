defmodule SpellbookWeb.V1.UserControllerTest do
  use SpellbookWeb.ConnCase

  import SpellbookWeb.Router.Helpers

  setup %{conn: conn} do
    {:ok, %{conn: conn}}
  end

  test "create/2 creates user", %{conn: conn} do
    attrs = %{
      "email" => "tester@mail.com",
      "password" => "testPassword1"
    }

    response =
      conn
      |> post(user_path(conn, :create), attrs)
      |> json_response(201)

    assert response == %{
             "access_token" => response["access_token"],
             "refresh_token" => response["refresh_token"],
             "user" => %{
               "email" => attrs["email"]
             }
           }
  end
end
