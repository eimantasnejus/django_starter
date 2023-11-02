.PHONY: install
install:
	poetry install

.PHONY: lint
check:
	poetry run ruff format .
	poetry run ruff check . --fix

.PHONY: migrate
migrate:
	poetry run python -m core.manage migrate $(filter-out $@,$(MAKECMDGOALS))

.PHONY: migrations
migrations:
	poetry run python -m core.manage makemigrations

.PHONY: run-server
run-server:
	poetry run python -m core.manage runserver

.PHONY: shell
shell:
	poetry run python -m core.manage shell

.PHONY: superuser
superuser:
	poetry run python -m core.manage createsuperuser

.PHONY: test
test:
	poetry run pytest -v -rs -n auto --show-capture=no
