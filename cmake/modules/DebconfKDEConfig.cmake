# - Try to find debconf-kde
# Once done this will define
#
#  DEBCONF_KDE_FOUND - system has libdebconf-kde
#  DEBCONF_KDE_LIB - Link these to use Debconf-KDE

# Copyright (c) 2010, Daniel Nicolett, <dantti85-pk@yahoo.com.br>
#
# Redistribution and use is allowed according to the terms of the GPLv2+ license.

IF (DEBCONF_KDE_LIB)
    SET(DEBCONF_KDE_FIND_QUIETLY TRUE)
ENDIF (DEBCONF_KDE_LIB)

FIND_LIBRARY(DEBCONF_KDE_LIB NAMES debconf-kde)

IF (DEBCONF_KDE_LIB)
   SET(DEBCONF_KDE_FOUND TRUE)
ELSE (DEBCONF_KDE_LIB)
   SET(DEBCONF_KDE_FOUND FALSE)
ENDIF (DEBCONF_KDE_LIB)

IF (DEBCONF_KDE_FOUND)
  IF (NOT DEBCONF_KDE_FIND_QUIETLY)
    MESSAGE(STATUS "Found Debconf-KDE: ${DEBCONF_KDE_LIB}")
  ENDIF (NOT DEBCONF_KDE_FIND_QUIETLY)
ELSE (DEBCONF_KDE_FOUND)
  IF (DEBCONF_KDE_FIND_REQUIRED)
    MESSAGE(FATAL_ERROR "Could NOT find Debconf-KDE")
  ENDIF (DEBCONF_KDE_FIND_REQUIRED)
ENDIF (DEBCONF_KDE_FOUND)

MARK_AS_ADVANCED(DEBCONF_KDE_LIB)
