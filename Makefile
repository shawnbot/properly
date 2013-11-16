all: properly.min.js

update-version:
	./version.sh properly.js index.html

properly.min.js: properly.js
	echo "// Properly `cat VERSION`" > $@
	uglifyjs $< >> $@

clean:
	rm -f properly.min.js
