build:
	docker build -t frontend-builder .

tag:
	docker tag frontend-builder abuecker/frontend-builder:${VERSION}

push: tag
	docker push abuecker/frontend-builder:${VERSION}
