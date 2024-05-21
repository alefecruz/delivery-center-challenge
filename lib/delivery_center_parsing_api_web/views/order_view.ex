defmodule DeliveryCenterParsingApiWeb.OrderView do
  use DeliveryCenterParsingApiWeb, :view

  def render("order.json", %{order: order}) do
    order
  end
end
