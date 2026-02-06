# Interoperability demo: using #expect in Corelibs XCTest

Try out interoperability! This repo and examples probably only work on Linux.

## Container setup

Using a container is recommended:

```bash
# Req'd one time, build the image
docker build -t swift-corelibs-xctest-docker:latest .
```

```bash
docker run --memory 8G -it -v $(pwd):/test-project swift-corelibs-xctest-docker /bin/bash
```

## Running the tests

```bash
LD_PRELOAD=.build/aarch64-unknown-linux-gnu/debug/libXCTest.so swift test
```

It's a little gross, but unfortunately we have to force the test binary to load
the copy of `libXCTest.so` built from our package dependency. By default, the
test binary will use the toolchain copy of `libXCTest.so` which doesn't have
interop capabilities.

If you did it correctly, you'll see the following:
```
Interop: installing XCTest's interop handler
Interop: install succeeded
```

## Learn more

Intrigued? Excited? Terrified? Either way, check out the [pitch][]!

[pitch]: https://forums.swift.org/t/pitch-targeted-interoperability-between-swift-testing-and-xctest/82505/8
