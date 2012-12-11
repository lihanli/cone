# cone

Automatically generated javascript url helpers based on your Rails routes.

## usage

```
user GET    /users/:id(.:format)                     users#show
```
Let's say you have this Rails route. Here's how you would access it in javascript with cone:

```javascript
cone.userUrl({id: 12 });
"/users/12"

cone.userUrl({id: 12, format: 'json' });
"/users/12.json"

cone.userUrl({id: 12, format: 'json', foo: 'bar baz'});
"/users/12.json?foo=bar%20baz"
```

Reload the server whenever your routes change to have the javascript regenerated.

## installation

1. Add gem 'cone' to your Gemfile.
2. Run bundle install.
3. Add //= require cone to your Javascript manifest file (usually found at app/assets/javascripts/application.js).
4. Restart your server