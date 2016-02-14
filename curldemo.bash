# curldemo.bash

# ref:
# https://www.firebase.com/docs/rest/api/

# This works:
# curl https://fb-angular2-demo.firebaseio.com/heroes.json

# Syntax from firebase api demo:
# curl -X PUT -d '{ "first": "Jack", "last": "Sparrow" }' 'https://samplechat.firebaseio-demo.com/users/jack/name.json'

# This works
# curl -X PUT -d '[{"id":1,"name":"Dan Bikle"},{"id":2,"name":"Danster Bikle"}]'  https://fb-angular2-demo.firebaseio.com/danheroes.json

curl https://fb-angular2-demo.firebaseio.com/danheroes.json
