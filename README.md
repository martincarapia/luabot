# snidermm

C++ core library.  Library might become a general support library for all of C.S. at snider.

## Building with meson.

### Dependencies
* [Boost](https://boost.org) - test suite headers for tests.
* [Meson](https://mesonbuild.com) - Build system.
* [Python](https://www.python.org/) - Required by meson.

This at the moment is a header only library. Some of the future API might itself depend on FRC libraries and therefore the unit tests only check non-FRC dependent code.

### Build and Run Tests
The steps here are for a Linux system but should work on any platform with C++ and boost available.

```bash
# run the setup/configure command. needs done once.
# the "-C build" is specifying that a sub directory
# called build is where binaries are produced.
meson setup build -C build

# compile it
meson compile -C build

# test it
meson test -C build
```

You can also `cd` in to the build directory and cut out the `-C build`

```bash
meson setup -C build
# go inside the build directory
cd build

# same commands without -C
meson compile

meson test

# ... and so on ...
```

_Note: the steps above might need additional options on a OSX or Windows, but the general concept is the same_
