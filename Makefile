all:
	gcc -O3 -lpng makePNG.c -o makePNG

clean:
	rm -f makePNG
	rm -rf frames
	rm -f fractal.mp4
	rm -f Makefile~
	rm -f .DS_Store
