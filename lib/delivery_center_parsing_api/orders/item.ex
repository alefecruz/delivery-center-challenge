defmodule DeliveryCenterParsingApi.Orders.Item do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "item" do
    belongs_to :orderId, DeliveryCenterParsingApi.Orders.Order, type: :binary_id
    belongs_to :itemId, DeliveryCenterParsingApi.Orders.Item, type: :binary_id
    field :externalCode, :string
    field :name, :string
    field :price, :float
    field :quantity, :integer
    field :total, :float

    timestamps()
  end

  # @unique_msg            "Este valor já está sendo usado"
  def changeset(order, attrs) do
    fields = [:externalCode, :orderId,
      :itemId, :name, :price,
      :quantity, :total]
    order
    |> cast(attrs, fields)
    |> validate_required(fields)
  end
end
