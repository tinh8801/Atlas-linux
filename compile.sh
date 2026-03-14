#!/bin/bash
echo 'Compiling...'
g++ -c -o AtlasCore.o AtlasCore.cpp
g++ -c -o AtlasExtension.o AtlasExtension.cpp
g++ -c -o AtlasFile.o AtlasFile.cpp
g++ -c -o AtlasLogger.o AtlasLogger.cpp
g++ -c -o AtlasMain.o AtlasMain.cpp
g++ -c -o AtlasParser.o AtlasParser.cpp
g++ -c -o AtlasStats.o AtlasStats.cpp
g++ -c -o AtlasTypes.o AtlasTypes.cpp
g++ -c -o GenericVariable.o GenericVariable.cpp
g++ -c -o Pointer.o Pointer.cpp
g++ -c -o PointerHandler.o PointerHandler.cpp
g++ -c -o Table.o Table.cpp
g++ -o atlas AtlasCore.o AtlasExtension.o AtlasFile.o AtlasLogger.o AtlasMain.o AtlasParser.o AtlasStats.o AtlasTypes.o GenericVariable.o Pointer.o PointerHandler.o Table.o -ldl -lncurses
echo 'Done.'

