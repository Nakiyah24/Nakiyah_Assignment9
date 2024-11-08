install:
	pip install --upgrade pip && pip install -r Requirements.txt

format:
	black *.py

lint:
	pylint --disable=R,C --ignore-patterns=test_.*?py *.py

test:
	python -m pytest -vv --nbval -cov=mylib -cov=main test_*.py *.ipynb

all: install format lint test