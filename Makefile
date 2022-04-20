deps: 
	pip install -r requirements.txt; \ 
	pip install -r test_requirements.txt     

lint: 
	flake8 hello_world test 
test:
	python3 test\test_views.py;
	python3 test\test_formater.py
run:
	python3 main.py