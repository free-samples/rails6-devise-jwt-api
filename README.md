# Rails 6 Devise JWT API
This is the initial project template. It is an API Rails application with devise and JWT enabled.

## TODO Enable and implement pundit

+ Clone repo (git clone https://github.com/free-samples/rails6-devise-jwt-api.git)
+ cd rails6-devise-jwt-api
+ Install dependencies with bundle install
+ Generate db, run migrations and seeds. 

  ``bundle exec rails db:generate;
  bundle exec rails db:migrate;
  bundle exec rails db:seed``
+ Run tests (bundle exec rspec)


## Running with Docker

docker-compose build --no-cache
docker-compose up
(type yes on the prompt if it appears)

docker ps

```
CONTAINER ID        IMAGE                       COMMAND                  CREATED              STATUS              PORTS                    NAMES
6d99fb2c24ab        rails6-devise-jwt-api_web   "entrypoint.sh bash …"   About a minute ago   Up About a minute   0.0.0.0:3000->3000/tcp   rails6-devise-jwt-api_web_1
a17908ed4726        postgres                    "docker-entrypoint.s…"   About an hour ago    Up About a minute   5432/tcp                 rails6-devise-jwt-api_db_1
```

docker exec -it rails6-devise-jwt-api_web_1 rails db:migrate
docker exec -it rails6-devise-jwt-api_web_1 rails db:seed

Try reaching the API with Postman by calling through a POST call

http://localhost:3000/users/sign_in

With the params:
user[email]     u@email.com
user[password]  12345678

And the response should generate a token


Note:

