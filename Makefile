PROGRAMA   = q
COMPILADOR = g++
ARQUIVOS   = main.cpp
OBJETOS = $(ARQUIVOS:.cpp=.o)

FLAGS = -std=c++11 -Wall


all: $(PROGRAMA)
	echo $@

$(PROGRAMA): $(OBJETOS)
	$(COMPILADOR) $(FLAGS) -o $@ $(OBJETOS)

%.o: %.cpp
	$(COMPILADOR) $(FLAGS) -c $^

clean:
	rm *.o

rmproper: clean
	rm $(PROGRAMA)

run:
	./$(PROGRAMA) $(args)

zip:
	tar -czvf $(PROGRAMA).tar.gz *.h *.cpp Makefile