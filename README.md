# expanderDocker
Dockerfile, Makefile and a start-script for [Expander 2](https://fldit-www.cs.uni-dortmund.de/~peter/ExpNeu/Welcome.html).


## Building Dockerimage from scratch
1. Download ohexp.tgz with ```make download```
2. Change set two constants in ohexp/Expander2/System.hs
  - ```builtinLib file = "Examples" ++ [fileSeparator] ++ file```
  - ```userLibDir = "ExpanderLib" ++ [fileSeparator]```
3. ```make all```

## Start Docker

### Mac
```./startMac``` in XQuartz

### Linux (Not Tested)
```docker run DISPLAY=$DISPLAY -v ~/ExpanderLib/:/expander/Expander2/ExpanderLib -v /tmp/.X11-unix:/tmp/.X11-unix  expander2```

### Windows
?

## Notes
- To load your own Specifications store file at ~/ExpanderLib/ and load it with the name in entry fiel + ENTER

## rohugs Docker
Dockerfile to compile rohugs ready for [Expander 2](https://fldit-www.cs.uni-dortmund.de/~peter/ExpNeu/Welcome.html).
It expects to to have the Expander source in ~/ExpanderSrc. To start see rohugs/startMac, other platforms analog.
System.hs path variables still need to be changed accordingly.
