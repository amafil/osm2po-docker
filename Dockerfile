FROM openjdk:11

#Example value: http://download.geofabrik.de/europe/italy/centro-latest.osm.pbf
ARG OSM_PBF_SOURCE

COPY . .

EXPOSE 8888

CMD java -Xmx1g -jar bin\osm2po-core-5.5.1-signed.jar prefix=hh tileSize=x $OSM_PBF_SOURCE