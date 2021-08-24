defmodule LogLadyWeb.CORS do
  use Corsica.Router,
    origins: ["http://localhost", ~r{^http?://(.*\.)?fakeshrimp\.com$}],
    allow_credentials: true,
    max_age: 600

  resource "/api/*", origins: ["http://localhost", ~r{^http?://(.*\.)?fakeshrimp\.com$}]
end
