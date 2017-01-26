defmodule SocialTables do
  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://api-sandbox.socialtables.com"
  plug Tesla.Middleware.Headers, %{"Authorization" => "Bearer "}
  plug Tesla.Middleware.JSON

  adapter Tesla.Adapter.Hackney

  def me do
    get("/3.0/users/me")
  end
end
