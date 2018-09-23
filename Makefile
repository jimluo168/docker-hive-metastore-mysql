# current_branch := $(shell git rev-parse --abbrev-ref HEAD)
current_branch := 1.0.0
build:
	docker build -t registry.advanpro.cn/hive-metastore-mysql:$(current_branch) ./
