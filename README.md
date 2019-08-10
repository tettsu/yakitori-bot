# yakitori-bot

## about

スノークのお嬢さん


## SSL_CERT_FILE

```
set SSL_CERT_FILE=C:\ruby\cacert.pem
```

```
gem install rubygems-update --source http://rubygems.org/
```

## start

### local

```
ruby main.rb
```

### on heroku

```
git add .
git commit -am "comment."
git push heroku master
heroku ps:scale yakitori-bot=1
```