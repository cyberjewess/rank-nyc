# https://apple.stackexchange.com/a/415544
lid-off: 
	sudo pmset -a disablesleep 1
	# As root, set the laptop to never sleep, even if the lid closes
lid-on: 
	sudo pmset -a disablesleep 0
	# As root, revert the above

prod-b: prod-down prod-pull prod-build prod-up
dev-b: dev-down dev-pull dev-build dev-up

prod-up:
	docker-compose --profile prod -f src/rank-nyc/docker-compose.yml up

prod-pull:
	docker-compose --profile prod -f src/rank-nyc/docker-compose.yml	pull 

prod-build:
	docker-compose --profile prod -f src/rank-nyc/docker-compose.yml build 

prod-down:
	docker-compose --profile prod -f src/rank-nyc/docker-compose.yml down	


dev-up:
	docker-compose --profile dev -f src/rank-nyc/docker-compose.yml up

dev-pull:
	docker-compose --profile dev -f src/rank-nyc/docker-compose.yml pull 

dev-build:
	docker-compose --profile dev -f src/rank-nyc/docker-compose.yml build 

dev-down:
	docker-compose --profile dev -f src/rank-nyc/docker-compose.yml down	
