destdir ?=
etcdir  ?= /etc
bindir  ?= /usr/bin

all:
	@echo nothing to do, use the install target to install!

install:
	install -D src/efistub         "$(destdir)/$(bindir)/efistub"
	# use cp here, don't overwrite the config file
	cp -n src/default/efistub "$(destdir)/$(etcdir)/default/efistub"
