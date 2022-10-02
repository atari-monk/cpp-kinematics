# Project: cpp-kinematics
# Makefile created by Red Panda C++ 1.1.5

CPP      = g++.exe
CC       = gcc.exe
WINDRES  = windres.exe
RES      = cpp-kinematics_private.res
OBJ      = main.o object.o keyboard.o resizer.o display.o printer.o timer.o menu.o data.o dataprinter.o tracer.o model.o glutapp.o framecomputer.o $(RES)
LINKOBJ  = main.o object.o keyboard.o resizer.o display.o printer.o timer.o menu.o data.o dataprinter.o tracer.o model.o glutapp.o framecomputer.o $(RES)
CLEANOBJ  =  main.o object.o keyboard.o resizer.o display.o printer.o timer.o menu.o data.o dataprinter.o tracer.o model.o glutapp.o framecomputer.o cpp-kinematics_private.res cpp-kinematics.exe
LIBS     =  -mwindows -lm -lfreeglut.dll -lopengl32 -lglu32 -lwinmm -lgdi32
INCS     =  
CXXINCS  =  
BIN      = bin\Release\publish\cpp-kinematics.exe
CXXFLAGS = $(CXXINCS)  -g3 -pipe -Wall -Wextra -D__DEBUG__
CFLAGS   = $(INCS)  -g3 -pipe -Wall -Wextra -D__DEBUG__
RM       = del /q /f

.PHONY: all all-before all-after clean clean-custom

all: all-before $(BIN) all-after

clean: clean-custom
	${RM} $(CLEANOBJ) > NUL 2>&1

$(BIN): $(OBJ)
	$(CPP) $(LINKOBJ) -o $(BIN) $(LIBS)

main.o: main.cpp glutapp.h dataprinter.h model.h resizer.h data.h printer.h tracer.h timer.h menu.h framecomputer.h display.h keyboard.h object.h
	$(CPP) -c C:/kmazanek.gmail.com/Code/cpp-kinematics/main.cpp -o main.o $(CXXFLAGS) 

object.o: object.cpp object.h
	$(CPP) -c C:/kmazanek.gmail.com/Code/cpp-kinematics/object.cpp -o object.o $(CXXFLAGS) 

keyboard.o: keyboard.cpp keyboard.h
	$(CPP) -c C:/kmazanek.gmail.com/Code/cpp-kinematics/keyboard.cpp -o keyboard.o $(CXXFLAGS) 

resizer.o: resizer.cpp resizer.h
	$(CPP) -c C:/kmazanek.gmail.com/Code/cpp-kinematics/resizer.cpp -o resizer.o $(CXXFLAGS) 

display.o: display.cpp display.h printer.h dataprinter.h
	$(CPP) -c C:/kmazanek.gmail.com/Code/cpp-kinematics/display.cpp -o display.o $(CXXFLAGS) 

printer.o: printer.cpp printer.h
	$(CPP) -c C:/kmazanek.gmail.com/Code/cpp-kinematics/printer.cpp -o printer.o $(CXXFLAGS) 

timer.o: timer.cpp timer.h
	$(CPP) -c C:/kmazanek.gmail.com/Code/cpp-kinematics/timer.cpp -o timer.o $(CXXFLAGS) 

menu.o: menu.cpp menu.h
	$(CPP) -c C:/kmazanek.gmail.com/Code/cpp-kinematics/menu.cpp -o menu.o $(CXXFLAGS) 

data.o: data.cpp data.h object.h
	$(CPP) -c C:/kmazanek.gmail.com/Code/cpp-kinematics/data.cpp -o data.o $(CXXFLAGS) 

dataprinter.o: dataprinter.cpp printer.h dataprinter.h
	$(CPP) -c C:/kmazanek.gmail.com/Code/cpp-kinematics/dataprinter.cpp -o dataprinter.o $(CXXFLAGS) 

tracer.o: tracer.cpp data.h tracer.h object.h
	$(CPP) -c C:/kmazanek.gmail.com/Code/cpp-kinematics/tracer.cpp -o tracer.o $(CXXFLAGS) 

model.o: model.cpp dataprinter.h model.h resizer.h data.h printer.h tracer.h timer.h menu.h framecomputer.h display.h keyboard.h object.h
	$(CPP) -c C:/kmazanek.gmail.com/Code/cpp-kinematics/model.cpp -o model.o $(CXXFLAGS) 

glutapp.o: glutapp.cpp glutapp.h dataprinter.h model.h resizer.h data.h printer.h tracer.h timer.h menu.h framecomputer.h display.h keyboard.h object.h
	$(CPP) -c C:/kmazanek.gmail.com/Code/cpp-kinematics/glutapp.cpp -o glutapp.o $(CXXFLAGS) 

framecomputer.o: framecomputer.cpp data.h tracer.h timer.h framecomputer.h object.h
	$(CPP) -c C:/kmazanek.gmail.com/Code/cpp-kinematics/framecomputer.cpp -o framecomputer.o $(CXXFLAGS) 

cpp-kinematics_private.res: cpp-kinematics_private.rc 
	$(WINDRES) -i cpp-kinematics_private.rc --input-format=rc -o cpp-kinematics_private.res -O coff 

