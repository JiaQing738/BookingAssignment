docker network create bookingNetwork
docker pull qingzz/bookingdb:latest
docker run --name facilityBookingDB -e POSTGRES_PASSWORD=F@ci1ityB00king -p 5432:5432 -d qingzz/bookingdb:latest
docker network connect bookingNetwork facilityBookingDB
docker pull qingzz/bookingbackend:latest
docker run --name facilityBookingBackend -e APP_DB_PASSWORD=faci1ityAdmin -e APP_DB_NAME=facility_booking -e APP_DB_USERNAME=facilityadmin -e APP_DB_PORT=5432 -e APP_DB_HOST=facilityBookingDB -p 8000:8000 -d qingzz/bookingbackend:latest
docker network connect bookingNetwork facilityBookingBackend
docker pull qingzz/bookingfrontend:latest
docker run --name facilityBookingFrontend -p 3000:3000 -d qingzz/bookingfrontend:latest