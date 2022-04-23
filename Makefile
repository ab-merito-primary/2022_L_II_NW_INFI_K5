deps: 
	pip install -r requirements.txt; \ 
	pip install -r test_requirements.txt     

lint: 
	flake8 hello_world test 
test:
	.PHONY: test
	python3 test\test_views.py;
	python3 test\test_formater.py
run:
	python3 main.py
docker_build:
	
	docker build -t hello-world-printer . 

docker_run: docker_build

	docker run\
	
	--name hello-world-printer-dev\
		-p 5000:5000\
		-d hello-world-printer
