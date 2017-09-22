Map Picker
=====================

Works to provide an easy to use Google Maps interface for displaying and setting geographic co-ordinates .

Where a latitude and longitude is set on the model, it is indicated by a marker shown on a Google map centered at the marker. The administrator can change the value of these fields by clicking on the desired new location on the map.

Usage
=====

add the following to your `Gemfile`:

```ruby
gem " map_picker"
```

Then, add in your form:

```ruby
<%= form.map_picker :lat_column => 'latitude', :lng_column => 'longitude' , :zoom_level => 10, :default_coordinates => [lat,lng], autocomplete: { enable: true, class: 'form-control' }  %>
```

Or, user is as form helper:

```ruby
<%= render_map_picker :lat_column => 'latitude', :lng_column => 'longitude' , :zoom_level => 10, :default_coordinates => [lat,lng], autocomplete: { enable: true, class: 'form-control' }  %>
```
To display static map:

```ruby
<%= render_map_picker :static => 'true', :zoom_level => 10 , :default_coordinates => [lat,lng]  %>
```

Configuration
=============

beside the option depicted on the example above it can be configured with the following:

- `map_container_class` - custom class for the map container
- `map_width` - default "600px
- `map_height` - default "400px"
- `api_key` - Google Map api key (optional)
- `static`  - to display only static map, by default it set to false and the map will be editable
- `map_handler` - javascript map object to operate custom event on rendered map by default gMapObj is assigned as map object. You can implement any google map API methods like setCenter, zoom with that object
- `autocomplete` - enable autocomplete with input class - default "{ enable: true, class: 'form-control' }"

General configuration options
=============================

You can configure the following default values by overriding these values using:
MapPicker.configure method.

  lat_column #= :latitude
  lng_column #= :longitude
  default_coordinates #= [23.727666666, 90.410550] #Dhaka (my home town) center point :)
  map_handler #= 'gMapObj'
  zoom_level #= 10
  map_container_class #= 'map_picker_container'
  map_width #= '600px'
  map_height #= '400px'
  autocomplete #= { enable: true, class: 'form-control' }

There's a handy generator that generates the default configuration file into config/initializers directory.
Run the following generator command, then edit the generated file.

```ruby
rails g map_picker:config
```

LICENSE
=======
Is licensed under the MIT license.
