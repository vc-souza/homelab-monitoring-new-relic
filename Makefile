.PHONY: all
all: run

newrelic-infra.yml:
	@cp newrelic-infra.yml.template newrelic-infra.yml

.PHONY: run
run:
	@docker compose up -d

.PHONY: stop
stop: 
	@docker compose down

.PHONY: install
install: newrelic-infra.yml

.PHONY: uninstall
uninstall:
	@docker compose down -v
	@rm newrelic-infra.yml
