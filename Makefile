filebeat:
	docker build --no-cache -t herpiko/filebeat .
	docker-compose up -d --force-recreate filebeat

elk:
	docker kill $$(docker ps | grep elk | awk {'print $1'}) || true
	docker rm $$(docker ps | grep elk | awk {'print $1'}) || true
	docker-compose up -d --force-recreate elk
