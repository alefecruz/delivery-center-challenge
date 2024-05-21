defmodule DeliveryCenterParsingApi.Repo.Migrations.AddOrderTable do
  use Ecto.Migration

  def change do
    create table(:order, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :externalCode, :string
      add :storeId, :integer
      add :subTotal, :string
      add :deliveryFee, :string
      add :total, :string
      add :country, :string
      add :state, :string
      add :city, :string
      add :district, :string
      add :street, :string
      add :complement, :string
      add :latitude, :float
      add :longitude, :float
      add :dtOrderCreate, :utc_datetime
      add :postalCode, :string
      add :number, :string

      timestamps()
    end
    create unique_index(:order, [:externalCode])
    create unique_index(:order, [:storeId])
  end
end
