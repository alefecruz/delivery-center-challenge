defmodule DeliveryCenterParsingApi.Orders.Order do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "order" do
    field :externalCode, :string
    field :storeId, :integer
    field :subTotal, :string
    field :deliveryFee, :string
    field :total, :string
    field :country, :string
    field :state, :string
    field :city, :string
    field :district, :string
    field :street, :string
    field :complement, :string
    field :latitude, :float
    field :longitude, :float
    field :dtOrderCreate, :utc_datetime
    field :postalCode, :string
    field :number, :string

    timestamps()
  end

  # @unique_msg            "Este valor já está sendo usado"
  def changeset(order, attrs) do
    fields = [:externalCode, :storeId,
      :subTotal, :deliveryFee, :total,
      :country, :state, :city,
      :district, :street, :complement,
      :latitude, :longitude, :dtOrderCreate,
      :postalCode, :number]
    order
    |> cast(attrs, fields)
    |> validate_required(fields)
  end
end
