defmodule Web.TopicController do
  use Web.Web, :controller

  alias Web.Topic

  def index(conn, _params) do
    render conn, "index.html"
    topics = Repo.all(Topic)
  end

  def new(conn, _params) do
    changeset = Topic.changeset(%Topic{}, %{})

    render conn, "new.html", changeset: changeset
  end

  def create(conn, %{"topic" => topic}) do
    changeset = Topic.changeset(%Topic{}, topic)
    case Repo.insert(changeset) do
      {:ok, post} ->
        render conn, "index.html"
      {:error, changeset} ->
        render conn, "new.html", changeset: changeset
    end
    # if changeset.valid?
    #   render conn, "index.html"
    # end
  end
end
