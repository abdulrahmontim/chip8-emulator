CXX      = g++
CXXFLAGS = -Iinclude -Wall
LDFLAGS  = -Llib -lmingw32 -lSDL2main -lSDL2 -mwindows

SRC = src/main.cpp src/chip8.cpp
OUT = build/chip8

all: $(OUT)

$(OUT): $(SRC)
	mkdir -p build
	$(CXX) $(CXXFLAGS) $(SRC) $(LDFLAGS) -o $(OUT)
	cp lib/SDL2.dll build/

clean:
	rm -rf build/chip8.exe
	
# cli: g++ src/main.cpp src/chip8.cpp -Iinclude -Llib -lSDL2 -o build/chip8