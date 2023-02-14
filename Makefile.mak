CC=g++
CFLAGS=-c -Wall
LDFLAGS=
SOURCES=main.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=tetris

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@ -lsfml-system -lsfml-window -lsfml-graphics -lsfml-network -lsfml-audio

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

copy:
	cp -R images $(CMAKE_CURRENT_BINARY_DIR)/

clean:
	rm -rf *.o $(EXECUTABLE)
