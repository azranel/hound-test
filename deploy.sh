echo "1. DEPLOYING"
git push heroku master

echo "2. RUNNING MIGRATIONS"
heroku run "POOL_SIZE=2 mix ecto.migrate"
