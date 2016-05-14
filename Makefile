all: build.o link clean
	
build.o:
	g++ -c src/main.cpp -o build/main.o
	
link: 
	g++ build/main.o -o bin/main -lGL -lGLU -lglut -lX11 -ldl -lXext -lz
	
clean: 
	rm build/main.o