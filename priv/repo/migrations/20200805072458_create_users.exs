defmodule Radio.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :age, :integer
      add :accepted_terms, :boolean
      add :occupation, :string

      timestamps()
    end
  end
end
