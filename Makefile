pwd=$(shell /usr/bin/pwd)

run:
	sudo docker run --rm -v $(pwd):/app simbafs/matplotlib
	sudo chown $(USER).$(USER) . -R

image:
	sudo docker build . -t simbafs/matplotlib

exportImage: 
	sudo docker image save simbafs/matplotlib > matplotlib.tar

.PHONY: image run exportImage
