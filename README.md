# osm2po-docker

Windows docker image of [Osm2Po](https://osm2po.de/releases/osm2po-5.5.1.zip)

Build image:

`docker build --build-arg OSM_PBF_SOURCE=http://download.geofabrik.de/europe/italy/centro-latest.osm.pbf -t osm2po:italy-centro .`

Start container:

`docker run -p 8080:8080 -d filoa86/osm2po-:latest`

[Here](http://download.geofabrik.de) you can get OpenStreetMap data
