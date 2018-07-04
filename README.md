# expanderDocker
Dockerfile, Makefile and a start-script for macOS for [Expander 2](https://fldit-www.cs.uni-dortmund.de/~peter/ExpNeu/Welcome.html).


## Building Dockerimage from scratch
1. Download ohexp.tgz with ```make download```
2. Change set two constants in ohexp/Expander2/System.hs
  - ```builtinLibDir = "Examples" ++ [fileSeparator]```
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

  
