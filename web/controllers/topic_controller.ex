defmodule Web.TopicController do
  use Web.Web, :controller
  alias Web.Topic

  def new(conn, params) do
    changeset = Topic.changeset(%Topic{}, %{})
  end
end
