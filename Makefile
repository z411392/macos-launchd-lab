.PHONY: \
	install \
	load \
	unload \
	uninstall \
	start

install:
	@cp com.junwei.hello.plist ~/Library/LaunchAgents

load:
	@sudo pmset repeat wakeorpoweron MTWRFSU 02:00:00
	@launchctl load ~/Library/LaunchAgents/com.junwei.hello.plist

unload:
	@launchctl unload ~/Library/LaunchAgents/com.junwei.hello.plist
	@sudo pmset repeat cancel

uninstall:
	@rm ~/Library/LaunchAgents/com.junwei.hello.plist

start:
	@launchctl start com.junwei.hello
	@#/usr/bin/caffeinate -i /Users/z411392/pmset-lab/.venv/bin/python /Users/z411392/pmset-lab/src/main.py