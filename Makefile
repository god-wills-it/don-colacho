all: normal dat

normal:
	jq '.[] | {text}["text"]' don-colacho.json | \
        awk '{gsub("\\\\n", "\n"); print "echo " $$0 "; echo - Nicolás Gómez Dávila; echo \\%"}' | sh > don-colacho

dat:
	strfile don-colacho don-colacho.dat


