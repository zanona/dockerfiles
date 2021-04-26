all: */Dockerfile
	make -B $^

%/Dockerfile:
	docker build $(@D) -t zanona/$(@D):1
