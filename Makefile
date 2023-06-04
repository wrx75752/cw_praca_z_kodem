run: lint
	python3 -m flask run
lint: requirements
	pylint app.py
requirements:
	pip3 install -r requirements.txt