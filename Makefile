build:
	docker build -t rodrigobrito/jupyter-lab-alpine ./docker

build-n-push: build
	docker push rodrigobrito/jupyter-lab-alpine

run:
	docker run -ti -p 8888:8888 -v `pwd`/notebooks:/opt rodrigobrito/jupyter-lab-alpine