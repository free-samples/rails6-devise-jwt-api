# Rails 6 Devise JWT API
This is the initial project template. It is an API Rails application with devise and JWT enabled.

##TODO Enable and implement pundit

+ Clone repo (git clone https://github.com/free-samples/rails6-devise-jwt-api.git)
+ cd rails6-devise-jwt-api
+ Install dependencies with bundle install
+ Generate db, run migrations and seeds. 

  ``bundle exec rails db:generate;
  bundle exec rails db:migrate;
  bundle exec rails db:seed``
+ Run tests (bundle exec rspec)

Note:

Depending on the mysql version you have installed you may have to modify the way you install mysql2 gem:

gem install mysql2 -v '0.4.10' -- --with-ldflags=-L/usr/local/opt/openssl/lib --with-cppflags=-I/usr/local/opt/openssl/include


##Deployment

```
cap staging deploy
```


##Console in other environment
```
bundle exec rails console staging
```
