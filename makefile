help:	## Help Menu
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
build:	## make Build - Build Docker
	@docker-compose -p chef build
run:	## make run - Run Docker
	@docker-compose -p chef up -d
deploy: ## make deploy - triggers make run and build together
	@docker-compose -p chef build
	@docker-compose -p chef up -d
stop:	## make stop - stop Docker
	@docker-compose -p chef down
