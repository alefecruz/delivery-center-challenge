# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     DeliveryCenterParsingApi.Repo.insert!(%DeliveryCenterParsingApi.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
# Order.changeset(%Order{}, %{externalCode: "12", subTotal: "10", storeId: "123",deliveryFee: "12", total: "1232", country: "BR", state: "SP", city: "Recife", district: "Paulista", street: "Vinte e um", complement: "Proximo", latitude: 1.23, longitude: 1.23, dtOrderCreate: "2019-06-27T19:59:08.251Z", postalCode: "85045020", number: "0"})
