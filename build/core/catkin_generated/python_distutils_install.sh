#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/bluerov2-22/v1Bluerov/src/core"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/bluerov2-22/v1Bluerov/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/bluerov2-22/v1Bluerov/install/lib/python3/dist-packages:/home/bluerov2-22/v1Bluerov/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/bluerov2-22/v1Bluerov/build" \
    "/usr/bin/python3" \
    "/home/bluerov2-22/v1Bluerov/src/core/setup.py" \
     \
    build --build-base "/home/bluerov2-22/v1Bluerov/build/core" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/bluerov2-22/v1Bluerov/install" --install-scripts="/home/bluerov2-22/v1Bluerov/install/bin"
