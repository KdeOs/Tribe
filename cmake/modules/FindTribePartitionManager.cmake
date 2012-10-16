# - Try to find marblewidget library
# Once done this will define
#
#  TRIBEPARTITIONMANAGER_FOUND - system has TRIBEPARTITIONMANAGER library
#  TRIBEPARTITIONMANAGER_INCLUDE_DIR - the TRIBEPARTITIONMANAGER include directory
#  TRIBEPARTITIONMANAGER_LIBRARY - the marblewidget library
#
#  copyright 2008 by Patrick Spendrin <ps_ml@gmx.de>
#  use this file as you like
#

if(TRIBEPARTITIONMANAGER_INCLUDE_DIR AND TRIBEPARTITIONMANAGER_LIBRARY)

  # Already in cache
  set(TRIBEPARTITIONMANAGER_FOUND TRUE)

else(TRIBEPARTITIONMANAGER_INCLUDE_DIR AND TRIBEPARTITIONMANAGER_LIBRARY)
  find_path(TRIBEPARTITIONMANAGER_INCLUDE_DIR core/partition.h PATH_SUFFIXES tribepartitionmanager)

  find_library(TRIBEPARTITIONMANAGER_LIBRARY tribepartitionmanager)

  if(TRIBEPARTITIONMANAGER_INCLUDE_DIR AND TRIBEPARTITIONMANAGER_LIBRARY)
    set(TRIBEPARTITIONMANAGER_FOUND TRUE)
  endif(TRIBEPARTITIONMANAGER_INCLUDE_DIR AND TRIBEPARTITIONMANAGER_LIBRARY)

  if(TRIBEPARTITIONMANAGER_FOUND)
    if (NOT TRIBEPARTITIONMANAGER_FIND_QUIETLY)
      message(STATUS "Found custom PartitionManager for Tribe by Dario (tm): ${TRIBEPARTITIONMANAGER_LIBRARY}")
    endif (NOT TRIBEPARTITIONMANAGER_FIND_QUIETLY)
  else(TRIBEPARTITIONMANAGER_FOUND)
    if(TRIBEPARTITIONMANAGER_FIND_REQUIRED)
      message(FATAL_ERROR "Could NOT find any PartitionManager for Tribe by Dario (tm) library")
    endif(TRIBEPARTITIONMANAGER_FIND_REQUIRED)
  endif(TRIBEPARTITIONMANAGER_FOUND)

  mark_as_advanced(TRIBEPARTITIONMANAGER_INCLUDE_DIR TRIBEPARTITIONMANAGER_LIBRARY)
endif(TRIBEPARTITIONMANAGER_INCLUDE_DIR AND TRIBEPARTITIONMANAGER_LIBRARY)
