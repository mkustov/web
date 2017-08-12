defmodule Web.Topic do
  use Web.Web, :model

  schema "topics" do
    field :title, :string
    belongs_to :user, Web.User
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title])
    |> validate_required([:title])
  end
end
