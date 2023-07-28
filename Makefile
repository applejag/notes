
run:
	podman run \
		--rm \
		-it \
		--name emanote \
		-p 8999:8999 \
		-v ./content:/data:Z \
		--tmpfs /tmp \
		-e LANG=C.UTF-8 \
		-e LC_ALL=C.UTF-8 \
		--pull always \
		sridca/emanote \
		emanote run \
		--port 8999 \
		--host 0.0.0.0
