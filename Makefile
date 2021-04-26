all: */Dockerfile
	make -B $^

%/Dockerfile:
	docker build $(@D) -t ghcr.io/zanona/$(@D):1
