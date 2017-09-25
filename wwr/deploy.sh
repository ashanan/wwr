export PATH=~/.rbenv/shims:~/.rbenv/bin:"$PATH"
echo $PATH

cd /var/www/wwr 
rbenv local 2.4.0
bundle install --local

echo 'production:
  adapter: sqlite3
  pool: 5
  timeout: 5000
  database: db/production.sqlite3
' > config/database.yml

bundle exec rails assets:precompile

kill `cat tmp/pids/server.pid`
bundle exec rails s -p 9292 -d