top_builddir = ..
srcdir = .
top_srcdir = .
include ./Makefile.common

all install uninstall clean:
	@echo making $@ in m4...
	cd m4;$(MAKE) $@
	@echo making $@ in lib...
	cd lib;$(MAKE) $@
	@echo making $@ in lib/pdf...
	cd lib/pdf;$(MAKE) $@
	@echo making $@ in lib...
	cd lib;$(MAKE) $@
	@echo making $@ in lib/python...
	cd lib/python;$(MAKE) $@
	@echo making $@ in lib/ruby...
	cd src;$(MAKE) $@
	@echo making $@ in avi2swf...
	cd avi2swf;$(MAKE) $@
	@echo making $@ in swfs...
	cd swfs;$(MAKE) $@
	@$(MAKE) $@-local

distclean:
	$(MAKE) clean
	rm -f config.status config.cache config.h Makefile Makefile.common libtool
	rm -f lib/readers/Makefile lib/lame/Makefile lib/python/Makefile lib/Makefile src/Makefile avi2swf/Makefile pdf2swf/fonts/Makefile

clean-local:
	rm -f config.cache gmon.out

uninstall-local:
	rm -rf $(pkgdatadir)

all-local:
	@true
install-local:
	@true

.PHONY: all install uninstall clean distclean clean-local uninstall-local all-local install-local
