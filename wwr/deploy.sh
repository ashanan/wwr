export PATH=~/.rbenv/shims:~/.rbenv/bin:"$PATH"
echo $PATH

cd /var/www/wwr 
rbenv local 2.4.0
bundle install --local
kill `cat tmp/pids/server.pid`
bundle exec rails s -p 9292 -d