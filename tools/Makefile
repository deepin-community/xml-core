## ----------------------------------------------------------------------
## Makefile : makefile for xml-core/tools
## ----------------------------------------------------------------------

## ----------------------------------------------------------------------
include ../MAKE/include

## ----------------------------------------------------------------------
## Tools directory definitions
pkg_name	= xml-core
pkg_share_dir	= $(share_dir)/$(pkg_name)

## ----------------------------------------------------------------------
## Tools file definitions
templates	= \
		catalog.header \
		catalog.footer
sbins		= \
		update-xmlcatalog
man8s		= \
		$(addsuffix .$(man8_ext),$(sbins))

## ----------------------------------------------------------------------
## targets

all:		$(man8s)

%.$(man8_ext):	%

		$(POD2MAN) --section $(man8_ext) --center $(pkg_name) ${<} ${@}

install:

		set -e; \
		$(INSTALL_DIR) $(pkg_share_dir); \
		for f in $(templates); \
		do \
			$(INSTALL_FILE) $${f} $(pkg_share_dir); \
		done

		set -e; \
		$(INSTALL_DIR) $(sbin_dir); \
		for f in $(sbins); \
		do \
			$(INSTALL_BIN) $${f} $(sbin_dir); \
		done

		set -e; \
		$(INSTALL_DIR) $(man8_dir); \
		for f in $(man8s); \
		do \
			$(INSTALL_FILE) $${f} $(man8_dir); \
		done

clean:
	$(RM) $(man8s)

.PHONY:		\
		all \
		clean \
		install

## ----------------------------------------------------------------------
