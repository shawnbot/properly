JS_COMPILER ?= java -jar tools/yuicompressor-2.4.2.jar

all: properly.min.js

update-version:
	./version.sh properly.js index.html

properly.min.js: properly.js
	echo "// Properly `cat VERSION`" > $@
	$(JS_COMPILER) $< >> $@

clean:
	rm -f properly.min.js
