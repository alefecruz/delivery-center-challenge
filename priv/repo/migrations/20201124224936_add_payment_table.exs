defmodule DeliveryCenterParsingApi.Repo.Migrations.AddPaymentTable do
  use Ecto.Migration

  def change do
    create table(:payment, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :orderId, references(:order, type: :binary_id, on_delete: :nothing), null: false
      add :type, :string
      add :value, :float
    end
  end
end
