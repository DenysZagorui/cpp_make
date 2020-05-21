SRC_PROG = main.cpp

SRC_LIB = calculator.cpp

LIB = lib$(SRC_LIB:.cpp=.so)
LIBS = -lcalculator

EXE = calc

$(EXE): $(LIB)
	g++ -o $(EXE) $(SRC_PROG) $(LIBS) -L.

$(LIB): $(SRC_LIB)
	g++ -shared -fPIC -o $(LIB) $(SRC_LIB)

clean:
	rm -rf $(EXE) $(LIB)
