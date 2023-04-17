## ----------------------------------------------------------------------
## Makefile : makefile for xml-core/debhelper
## ----------------------------------------------------------------------

## ----------------------------------------------------------------------
include ../MAKE/include

## ----------------------------------------------------------------------
## Debhelper directory definitions
debhelper_dir	= $(share_dir)/debhelper
dh_sequences_dir = $(share_dir)/perl5/Debian/Debhelper/Sequence
autoscripts_dir	= $(debhelper_dir)/autoscripts

## ----------------------------------------------------------------------
## Debhelper file definitions
autoscripts	= \
		postinst-xmlcatalog \
		postrm-xmlcatalog \
		prerm-xmlcatalog
dh_scripts	= \
		dh_installxmlcatalogs
dh_sequences = \
		xml_core.pm
man1s		= \
		$(addsuffix .$(man1_ext),$(dh_scripts))

## ----------------------------------------------------------------------
## Targets
all:		$(man1s)

%.$(man1_ext):	%

		$(POD2MAN) --section $(man1_ext) --center Debhelper ${<} ${@}

install:

		set -e; \
		$(INSTALL_DIR) $(autoscripts_dir); \
		for f in $(autoscripts); \
		do \
			$(INSTALL_FILE) $${f} $(autoscripts_dir); \
		done

		set -e; \
		$(INSTALL_DIR) $(bin_dir); \
		for f in $(dh_scripts); \
		do \
			$(INSTALL_BIN) $${f} $(bin_dir); \
		done

		set -e; \
		$(INSTALL_DIR) $(dh_sequences_dir); \
		for f in $(dh_sequences); \
		do \
			$(INSTALL_FILE) $${f} $(dh_sequences_dir); \
		done

		set -e; \
		$(INSTALL_DIR) $(man1_dir); \
		for f in $(man1s); \
		do \
			$(INSTALL_FILE) $${f} $(man1_dir); \
		done

clean:
	$(RM) $(man1s)

.PHONY:		\
		all \
		clean \
		install

## ----------------------------------------------------------------------
