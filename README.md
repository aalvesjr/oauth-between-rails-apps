[DoorKeeper and OAuth2](https://www.sitepoint.com/getting-started-with-doorkeeper-and-oauth-2-0/)

# How to use

```
git clone https://github.com/aalvesjr/oauth-between-rails-apps.git
cd oauth-between-rails-apps/ApiServer

bundle install
bundle exec rake db:create db:migrate
bundle exec rails s
```

Open the browser and access `http://localhost:3000/` click in `Register` and create an User

Access `http://localhost:3000/oauth/applications`, click in `New Application`
Fill name with `ServerApi` or any other name
Fill `Redirect URI` with `http://localhost:3001/oauth/callback` and click in `Submit`

In another terminal, open the client folder:

```
cd oauth-between-rails-apps/ApiClient
cp .env.example .env

vim .env
```

Copy `Application Id` and `Secret` to .env file created on server to `OAUTH_TOKEN` and `OAUTH_SECRET` respectively,
after:

```
bundle install
bundle exec rails s -p 3001 # the server shall be running at port 3000
```

Open other tab from browser and access `http://localhost:3001`, click in `Authorize via ApiServer`

After click in `Authorize` ApiServer to use your account.
Then, when you click on `Get User` should see the user's data
