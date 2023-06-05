FROM openjdk:11

#Example value: http://download.geofabrik.de/europe/italy/centro-latest.osm.pbf
ARG OSM_PBF_SOURCE
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

WORKDIR "C:/osm2po"

COPY . .

EXPOSE 8888

RUN java -Xmx2g -jar "bin\osm2po-core-5.5.1-signed.jar" cmd=tjspg prefix=hh tileSize=x ${OSM_PBF_SOURCE}

CMD java -Xmx2g -jar "bin\osm2po-core-5.5.1-signed.jar" cmd=r prefix=hh