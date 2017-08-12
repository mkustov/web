defmodule Web.CommentController do
  use Web.Web, :controller

  alias Web.Comment
  
  def create(conn, %{"comment" => comment}) do
    changeset = conn.assigns.user
      |> build_assoc(:comments)
      |> Comment.changeset(comment)

    case Repo.insert(changeset) do
      {:ok, _comment} ->
        render conn
        |> put_flash(:info, "Comment Created")
        |> redirect(to: topic_path(conn, :show, comment.topic_id))
      {:error, changeset} ->
        render conn
          |> redirect(to: topic_path(conn, :show, comment.topic_id))
    end
  end
end