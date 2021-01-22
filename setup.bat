docker pull qingzz/bookingdb:latest
docker run --name facilityBookingDB -e POSTGRES_PASSWORD=F@ci1ityB00king -p 5432:5432 -d qingzz/bookingdb:latest