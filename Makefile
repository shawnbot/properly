JS_COMPILER ?= java -jar tools/yuicompressor-2.4.2.jar

all: properly.min.js

properly.min.js: properly.js
	$(JS_COMPILER) $< > $@

clean:
	rm -f properly.min.js
