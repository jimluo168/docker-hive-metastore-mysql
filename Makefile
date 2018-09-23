current_branch := $(shell git rev-parse --abbrev-ref HEAD)
build:
	docker build -t registry.advanpro.cn/hive-metastore-mysql:$(current_branch) ./
