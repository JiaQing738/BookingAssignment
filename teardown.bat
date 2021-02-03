docker stop facilityBookingDB
docker rm facilityBookingDB
docker stop facilityBookingBackend
docker rm facilityBookingBackend
docker network rm bookingNetwork
docker stop facilityBookingFrontend
docker rm facilityBookingFrontend
docker image rm qingzz/bookingfrontend:latest
docker image rm qingzz/bookingdb:latest
docker image rm qingzz/bookingbackend:latest