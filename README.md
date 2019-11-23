GtkRadiant
==========

![logo](https://icculus.org/gtkradiant/images/logo-radiant.png)

GtkRadiant is an open-source, cross-platform level editor for id Tech based games. It comes with some map compilers and data authoring tools.

Downloads
---------

Ready-to-use GtkRadiant packages are available on the [Downloads page](http://icculus.org/gtkradiant/downloads.html) on GtkRadiant's website. Some [installation instruction](https://icculus.org/gtkradiant/installation.html) may be useful.

Useful links
------------

- [GtkRadiant website](https://icculus.org/gtkradiant/)
- [Documentation](https://icculus.org/gtkradiant/documentation.html)

Supported games
---------------

This fork of GtkRadiant only supports [Jedi Academy](https://en.wikipedia.org/wiki/Star_Wars_Jedi_Knight:_Jedi_Academy).

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

You can build a specific part like this:

```sh
#TODO
```

Level editor binary (`radiant`) and tools (like `q3map2`) will be found in `install/` directory. 

Getting in touch
----------------

Bugs can be submitted on the [GitHub issue tracker](https://github.com/cagelight/GtkRadiant/issues).

Legal
-----

GtkRadiant source code is copyrighted by [id Software, Inc](http://idsoftware.com/) and various contributors and protected by the [General Public License v2](GPL).
