all: expanderLib docker-build


expanderLib: 
	mkdir -p ~/ExpanderLib 
	mkdir -p ~/ExpanderLib/Pix 
	mkdir -p ~/ExpanderLib/Pix/picDir 


docker-build:
	docker build -t rohugs .


save: docker-build
	docker save -o rohugs.tar rohugs


download: 
	curl -O https://fldit-www.cs.tu-dortmund.de/~peter/ohexp.tgz
	tar -xf ohexp.tgz
	mkdir -p ~/ExpanderSrc
	cp -rf ohexp/Expander2 ~/ExpanderSrc
