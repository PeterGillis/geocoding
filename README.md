# README

Coding challenge example.

Brief: The task is to create a small Ruby API application providing an endpoint, which takes a GPS latitude and longitude and displays the names of museums around that location grouped by their postcode as JSON.

The app function is for a user to be able to display which museums are in the area based upon the given coordunates the user can input, either via manually inputting data into the URL, using Postman or connecting it to another APP.

The API call uses the Mapbox API:

``` https://docs.mapbox.com/api/search/#mapboxplaces```

For exmaple you can use ```http://localhost:3000/museums``` or ```http://localhost:3000/museums?lat=52.494857&lng=13.437641```

The result should be something like this:

```
{
  "10999": ["Werkbundarchiv – museum of things"],
  "12043": ["Museum im Böhmischen Dorf"],
  "10179": [
    "Märkisches Museum",
    "Museum Kindheit und Jugend",
    "Historischer Hafen Berlin"
  ],
  "12435": ["Archenhold Observatory"]
}
```
Please see the Mapbox documentaion here: ```https://docs.mapbox.com/api/search/#reverse-geocoding```


