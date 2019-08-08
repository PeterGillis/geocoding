# README

Coding challenge example.

Brief: The task is to create a small Ruby API application providing an endpoint, which takes a GPS latitude and longitude and displays the names of museums around that location grouped by their postcode as JSON.

The app function is for a user to be able to display which museums which are in the area based upon the given coordunates the user can input, either via manually inputting data into the URL, using Postman or connecting it to another APP.

For exmaple you can use ```http://localhost:3000/museums``` or ```http://localhost:3000/museums?lat=52.494857&lng=13.437641```

The result should be like this:

```{
  "lat": "52.494857",
  "lng": "13.437641",
  "poi": null
}
```

Things you may want to cover:

* Ruby version 2.5.3

* Rails version 5.2.3

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
