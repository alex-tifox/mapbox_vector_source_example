# Display Vector Source Data with MapBox in Flutter

Evaluating Mapbox in a Flutter project. This project is showing how to use MapBox tilesets and expressions to display
vector source data.

## Getting Started

To be able to run this project you need to have a MapBox account and a MapBox access token.

After that, go to `lib/mapbox_map/config/map_config.dart` and provide necessary:
- `mapStyle` and `accessToken` to be able to display the map
- `mapboxVectorSourceUrl` in format `mapbox://your_username.your_tileset_id`
- `mapboxVectorSourceId` (which you provided when adding a new source)
- `mapboxVectorSourceLayerId` (which is a source ID from Mapbox Studio)

This steps are required to be able to display the map with all the data you've added to your account

## Feedback

Feel free to reach out to me if you have any questions or feedback. I'm happy to help you with any issues you might have.
