all: build.o link clean
	
build.o:
	g++ -c -std=c++11 src/main.cpp -o build/main.o
	
link: 
	g++ build/main.o -o bin/main -lSDL -lSDL_image
	
clean: 
	rm build/main.o