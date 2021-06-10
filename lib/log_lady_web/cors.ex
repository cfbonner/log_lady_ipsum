defmodule LogLadyWeb.CORS do
  use Corsica.Router,
    origins: ["http://localhost"],
    allow_credentials: true,
    max_age: 600

  resource "/api/*", origins: "http://localhost:3000"
end
