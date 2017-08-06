defmodule Web.AuthController do
  use Web.Web, :controller
  plug Ueberauth

  def callback(conn, params) do
  end
end