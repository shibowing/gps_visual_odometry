# Look for GeographicLib
#
# Set
#  GEOGRAPHICLIB_FOUND = TRUE
#  GeographicLib_INCLUDE_DIRS = /usr/local/include
#  GeographicLib_LIBRARIES = /usr/local/lib/libGeographic.so
#  GeographicLib_LIBRARY_DIRS = /usr/local/lib

SET( GEOGRAPHICLIB_SEARCH_PATH ${GEOGRAPHICLIB_SEARCH_PATH} "/usr/include" )
SET( GEOGRAPHICLIB_SEARCH_PATH ${GEOGRAPHICLIB_SEARCH_PATH} "/usr/lib" )
SET( GEOGRAPHICLIB_SEARCH_PATH ${GEOGRAPHICLIB_SEARCH_PATH} "/opt/local/include" )
SET( GEOGRAPHICLIB_SEARCH_PATH ${GEOGRAPHICLIB_SEARCH_PATH} "/opt/local/lib" )

# search for the include path and the library path
FIND_PATH( GeographicLib_INCLUDE_DIRS Geoid.hpp HINTS ${GEOGRAPHICLIB_SEARCH_PATH} PATH_SUFFIXES GeographicLib )
FIND_LIBRARY( GeographicLib_LIBRARIES NAMES Geographic HINTS ${GEOGRAPHICLIB_SEARCH_PATH} )


include (FindPackageHandleStandardArgs)
find_package_handle_standard_args (GeographicLib DEFAULT_MSG
    GeographicLib_LIBRARIES GeographicLib_INCLUDE_DIRS)
mark_as_advanced ( GeographicLib_LIBRARIES eographicLib_INCLUDE_DIRS)