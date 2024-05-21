defmodule DeliveryCenterParsingApi.Orders.Payment do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "payment" do
    belongs_to :orderId, DeliveryCenterParsingApi.Orders.Order, type: :binary_id
    field :type, :string
    field :value, :float

    timestamps()
  end

  # @unique_msg            "Este valor já está sendo usado"
  def changeset(order, attrs) do
    fields = [:type, :orderId, :value ]
    order
    |> cast(attrs, fields)
    |> validate_required(fields)
  end
end
