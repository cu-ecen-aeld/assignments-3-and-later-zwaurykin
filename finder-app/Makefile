#variables
CC = gcc
CROSS_COMPILE=
CFLAGS =  -Wall -g
SRC = writer.c
OBJ = $(SRC:.c=.o)
TARGET = writer

#default rule
all: $(TARGET)

$(TARGET): $(OBJ)
	$(CROSS_COMPILE)$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CROSS_COMPILE)$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJ) $(TARGET)

.PHONY : all clean
