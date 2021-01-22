docker pull postgres:13.1
docker run --name facilityBookingDB -e POSTGRES_PASSWORD=F@ci1ityB00king -p 5432:5432 -d postgres:13.1
docker cp ./sql/init.sql facilityBookingDB:/home/init.sql
timeout 5
docker exec -u postgres facilityBookingDB psql postgres postgres -f home/init.sql