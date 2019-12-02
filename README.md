dogiradiant
==========

dogiradiant is an open-source, cross-platform level editor for [DogiJK](https://github.com/cagelight/DogiJK). It comes with some map compilers and data authoring tools.
Forked from [GtkRadiant](https://github.com/TTimo/GtkRadiant)

How to build
------------

Build is only supported on Linux

```sh
# get the source
git clone "https://github.com/cagelight/GtkRadiant.git"

# enter the source tree
cd GtkRadiant

# create build directory and enter it
mkdir build && cd build

# generate build files
cmake -G Ninja ..

# begin compilation
ninja install
```

Level editor binary (`radiant`) and tools (like `q3map2`) will be found in `install/` directory. 
