# This strings autochanged from release_lib.sh:
set(VERSION_REVISION 54396 CACHE STRING "")
set(VERSION_MAJOR 1 CACHE STRING "")
set(VERSION_MINOR 2 CACHE STRING "")
set(VERSION_PATCH 0 CACHE STRING "")
set(VERSION_GITHASH fe8c4d64e434cacd4ceef34faa9005129f2190a5 CACHE STRING "")
set(VERSION_DESCRIBE v1.2.0-testing CACHE STRING "")
set(VERSION_STRING 1.2.0 CACHE STRING "")
# end of autochange

set(VERSION_EXTRA "" CACHE STRING "")
set(VERSION_TWEAK "" CACHE STRING "")

if (VERSION_TWEAK)
    string(CONCAT VERSION_STRING ${VERSION_STRING} "." ${VERSION_TWEAK})
endif ()
if (VERSION_EXTRA)
    string(CONCAT VERSION_STRING ${VERSION_STRING} "." ${VERSION_EXTRA})
endif ()

set (VERSION_NAME "${PROJECT_NAME}")
set (VERSION_FULL "${VERSION_NAME} ${VERSION_STRING}")

if (APPLE)
    # dirty hack: ld: malformed 64-bit a.b.c.d.e version number: 1.1.54160
    math (EXPR VERSION_SO1 "${VERSION_REVISION}/255")
    math (EXPR VERSION_SO2 "${VERSION_REVISION}%255")
    set (VERSION_SO "${VERSION_MAJOR}.${VERSION_MINOR}.${VERSION_SO1}.${VERSION_SO2}")
else ()
    set (VERSION_SO "${VERSION_STRING}")
endif ()
