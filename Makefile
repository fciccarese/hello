setup:
	python3 -m venv ~/.hello

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	#hadolint demos/flask-sklearn/Dockerfile
	pylint --disable=R,C hello.py

all: install lint test