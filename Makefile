GIT_ADDRESS=git@github.com:esgi-foody/foody.git

install :
	mkdir -p docker/data
	cd .. && git clone $(GIT_ADDRESS) Foody
	cd ../Foody && make install

up :
	docker-compose up --build -d
	cd ../Foody && php bin/console server:run

down : 
	docker-compose down