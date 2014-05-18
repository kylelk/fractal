all:
	gcc -O3 -lpng makePNG.c -o makePNG

clean:
	rm -f makePNG
	rm -rf frames
