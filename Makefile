BUILD = build --no-cache
BUILD_PATH = .

all: sbc router aio

sbc:
	docker $(BUILD) -t wazopbx/wazo-c4-sbc -f Dockerfile-sbc $(BUILD_PATH)

router:
	docker $(BUILD) -t wazopbx/wazo-c4-router -f Dockerfile-router $(BUILD_PATH)

aio:
	docker $(BUILD) -t wazopbx/wazo-c4-aio -f Dockerfile-aio $(BUILD_PATH)

push:
	docker push wazopbx/wazo-c4-sbc
	docker push wazopbx/wazo-c4-router
	docker push wazopbx/wazo-c4-aio

.PHONY: sbc router aio push
