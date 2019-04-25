### Dependencies
* `rvm`
* `ruby` at `2.3.7` (via `rvm`)
* `redis` >= 4.0

### Running
* `cd sinatra-thin-rspec-boilerplate-redis/`
* `bundle install`
* `redis-server # in another process`
* `bundle exec thin start`

#### Running tests
* `cd sinatra-thin-rspec-boilerplate-redis/`
* `bundle exec rspec spec`

### POSTing
`curl -X  POST http://localhost:3000/keys/new_key_name`
