defmodule Sling do
   use Mongo.Pool, name: __MODULE__, adapter: Mongo.Pool.Poolboy
   def reader do
     # Starts the pool named MongoPool
     {:ok, _} = Sling.start_link(database: "test_db")

     # Gets an enumerable cursor for the results
     # Mongo.insert_many(Sling, "companies", [%{"name" => "Intelitica Systems"}, %{"name" => "Embraer Aerospace"}, %{"name" => "Petrobras Petroleum"}])

     cursor = Mongo.find(Sling, "companies", %{})
     list = Enum.to_list(cursor)
    # items = for item <- list, do: Map.put item, :_id, to_string(Map.fetch!(%{item: "_id"}, :item) ) |>



   end
end
