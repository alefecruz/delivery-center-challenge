defmodule DeliveryCenterParsingApi.Repo.Migrations.AddItemTable do
  use Ecto.Migration

  def change do
    create table(:item, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :externalCode, :string
      add :orderId, references(:order, type: :binary_id, on_delete: :nothing), null: false
      add :itemId, references(:item, type: :binary_id, on_delete: :nothing), null: true
      add :name, :string
      add :price, :float
      add :quantity, :integer
      add :total, :float
    end
  end
end
