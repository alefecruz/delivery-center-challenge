defmodule DeliveryCenterParsingApi.Repo.Migrations.AddCostumerTable do
  use Ecto.Migration

  def change do
    create table(:customer, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :externalCode, :string
      add :orderId, references(:order, type: :binary_id, on_delete: :nothing), null: false
      add :name, :string
      add :email, :string
      add :contact, :string
    end
    create unique_index(:customer, [:orderId])
  end
end
