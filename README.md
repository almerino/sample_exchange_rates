# Sample Exchange Rate
----

Sample Exchange Rate is a Rails app that displays the latest exchange rates.

The app will cache the datas from the api.
The cache expire every hour.

Use of [api_cache gem](https://github.com/mloughran/api_cache) to cache the datas from the request.

You need to configure [Dalli](https://github.com/mperham/dalli) with memcached

### install

```ruby
bundle install
rake db:migrate

run test:
bundle exec rspec
```


[heroku sample app](https://boiling-ridge-9198.herokuapp.com/)

License
----
MIT
