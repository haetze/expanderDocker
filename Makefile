


all: expanderLib docker-build


expanderLib: 
	mkdir -p ~/ExpanderLib 
	mkdir -p ~/ExpanderLib/Pix 
	mkdir -p ~/ExpanderLib/Pix/picDir 


docker-build:
	docker build -t expander2 .


save: docker-build
	docker save -o expander2.tar expander2


download:
	curl -O https://fldit-www.cs.tu-dortmund.de/~peter/ohexp.tgz
	tar -xf ohexp.tgz
