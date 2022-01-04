setup:
	poetry install

clean:
	rm -vrf ./build ./dist ./*.pyc ./*.tgz ./*.egg-info */.pytest_cache .pytest_cache

format:
	isort .
	black .

test:
	isort . --check
	black . --check

	rm -rf .pytest_cache
	flake8 .
	poetry run pytest
