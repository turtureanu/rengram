SOURCE_SYMBOLS = symbols/rengram
TARGET_SYMBOLS = /usr/share/X11/xkb/symbols/rengram
SOURCE_RULE = rules/evdev.xml
TARGET_RULE = /usr/share/X11/xkb/rules/evdev.xml
BACKUP = backup

all: reinstall

install: $(SOURCE_SYMBOLS) $(SOURCE_RULE) $(TARGET_RULE)
	cp -f $(SOURCE_SYMBOLS) $(TARGET_SYMBOLS)
	mkdir -p $(BACKUP)
	cp -f $(TARGET_RULE) $(BACKUP)
	cp -f $(SOURCE_RULE) $(TARGET_RULE)

uninstall: $(TARGET_SYMBOLS) $(TARGET_RULE)
	cp -f $(BACKUP)/* $(TARGET_RULE)
	rm $(TARGET_SYMBOLS)

reinstall:
	$(MAKE) uninstall
	$(MAKE) install

.PHONY: all install uninstall reinstall
