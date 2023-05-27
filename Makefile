
build:
	docker build -t ghpage .

rm:
	docker rm ghpage
	docker image rm ghpage