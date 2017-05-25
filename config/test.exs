use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :acceptancetesting, Acceptancetesting.Endpoint,
  http: [port: 4001],
  server: true

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :acceptancetesting, Acceptancetesting.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "acceptancetesting_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
