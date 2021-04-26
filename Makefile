all: */Dockerfile

%/Dockerfile:
	docker build $(@D) -t zanona/$(@D):1
