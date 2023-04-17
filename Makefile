## ----------------------------------------------------------------------
## Makefile : makefile for xml-core
## ----------------------------------------------------------------------

## ----------------------------------------------------------------------
include MAKE/include

## ----------------------------------------------------------------------
## source package subdirectory definitions
subdirs		= \
		debhelper \
		schemas \
		tools

## ----------------------------------------------------------------------
## XML infrastructure directory definitions
xml_dirs	= \
		declaration \
		entities \
		misc \
		schema

## ----------------------------------------------------------------------
## targets

all:

		set -e; \
		for d in $(subdirs); \
		do \
			$(MAKE) -C $${d} ${@}; \
		done

install:

		set -e; \
		for d in $(xml_dirs); \
		do \
			$(INSTALL_DIR) $(xml_dir)/$$d; \
			$(INSTALL_DIR) $(local_xml_dir)/$$d; \
		done

		set -e; \
		for d in $(subdirs); \
		do \
			$(MAKE) -C $${d} ${@}; \
		done

.PHONY:		\
		all \
		install

## ----------------------------------------------------------------------
