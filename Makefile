CC = g++
CFLAGS = -Wall -g

SRCS = main.cpp Planet.cpp
OBJS = $(SRCS:.cpp = .o)

%.o:%.cpp
	$(CC) $(CFLAGS) $< -o $@

Planet: $(OBJS)
	$(CC) $(CFLAGS) -o Planet $(OBJS)
