GIT_ADDRESS=git@github.com:esgi-foody/foody.git

install :
	mkdir -p docker/data
	cd .. && git clone $(GIT_ADDRESS) Foody
	cd ../Foody && composer install

up :
	docker-compose up --build

down : 
	docker-compose down