defmodule Radio.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :accepted_terms, :boolean, default: nil
    field :age, :integer
    field :name, :string
    field :occupation, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :age, :accepted_terms, :occupation])
    |> validate_required([:name, :age, :accepted_terms, :occupation])
    |> validate_inclusion(:accepted_terms, [true])
    |> validate_inclusion(:occupation, ["nurse", "postal worker", "landscape gardener"])
  end
end
