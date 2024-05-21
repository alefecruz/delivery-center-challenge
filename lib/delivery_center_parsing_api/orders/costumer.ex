defmodule DeliveryCenterParsingApi.Orders.Costumer do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "costumer" do
    belongs_to :orderId, DeliveryCenterParsingApi.Orders.Order, type: :binary_id
    field :externalCode, :string
    field :name, :string
    field :email, :string
    field :contact, :string

    timestamps()
  end

  # @unique_msg            "Este valor já está sendo usado"
  def changeset(order, attrs) do
    fields = [:externalCode, :orderId,
      :name, :email, :contact]
    order
    |> cast(attrs, fields)
    |> validate_required(fields)
  end
end
