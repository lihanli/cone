# cone

Automatically generated Javascript URL helpers based on your Rails routes.

## Usage

```
user GET    /users/:id(.:format)                     users#show
```
Let's say you have this Rails route. Here's how you would access it in Javascript with cone:

```javascript
cone.userPath({ id: 12 });
"/users/12"

cone.userPath({ id: 12, format: 'json' });
"/users/12.json"

cone.userPath({ id: 12, format: 'json', foo: 'bar baz' });
"/users/12.json?foo=bar%20baz"

cone.userPath({ id: 12, foo: 'bar baz', anchor: 'foo' });
"/users/12?foo=bar%20baz#foo"
```

Reload the server whenever your routes change to have the Javascript regenerated.

## Installation

1. Add gem 'cone' to your Gemfile.
2. Run bundle install.
3. Add //= require cone to your Javascript manifest file (usually found at app/assets/javascripts/application.js).
4. Restart your server.
