defmodule DeliveryCenterParsingApiWeb.Router do
  use DeliveryCenterParsingApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", DeliveryCenterParsingApiWeb do
    pipe_through :api

    post "/", OrderController, :create
  end
end
