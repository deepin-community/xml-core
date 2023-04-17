## ----------------------------------------------------------------------
## Makefile : makefile for xml-core/schemas
## ----------------------------------------------------------------------

## ----------------------------------------------------------------------
include ../MAKE/include

## ----------------------------------------------------------------------
## Schemas directory definitions
pkg_name	= xml-core
pkg_schema_dir	= $(schema_dir)/$(pkg_name)

## ----------------------------------------------------------------------
## Schemas file definitions
schemas		= \
		catalog.dtd \
		tr9401.dtd

## ----------------------------------------------------------------------
## targets

all:

install:

		set -e; \
		$(INSTALL_DIR) $(pkg_schema_dir); \
		for f in $(schemas); \
		do \
			$(INSTALL_FILE) $$f $(pkg_schema_dir); \
		done

.PHONY:		\
		all \
		install

## ----------------------------------------------------------------------
