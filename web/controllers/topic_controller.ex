defmodule Web.TopicController do
  use Web.Web, :controller

  alias Web.Topic

  def new(conn, params) do
    changeset = Topic.changeset(%Topic{}, %{})

    render conn, "new.html", changeset: changeset
  end

  def create(conn, %{"topic" => topic}) do

  end
end
