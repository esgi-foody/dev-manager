GIT_ADDRESS=git@github.com:esgi-foody/foody.git

install :
	mkdir -p docker/data
	cd .. && git clone $(GIT_ADDRESS) Foody
	cd ../Foody && composer install && yarn && yarn encore dev

up :
	docker-compose up --build -d
#	cd ../Foody && php bin/console server:run

down :
	docker-compose down
