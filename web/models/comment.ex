defmodule Web.Comment do
  use Web.Web, :model

  schema "commentss" do
    field :content, :string
    belongs_to :user, Web.User
    belongs_to :topic, Web.Topic

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:content])
    |> validate_required([:content])
  end
end