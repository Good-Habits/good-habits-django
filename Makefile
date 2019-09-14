.PHONY: quality

setup:
	cp .env.example .env
	pipenv install

security:
	pipenv check

formatting:
	pipenv run black src

linting:
	pipenv run pylint src/*

typing:
	pipenv run mypy src

test:
	pipenv run pytest

quality: security formatting linting typing test
