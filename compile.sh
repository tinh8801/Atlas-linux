#!/bin/bash
echo 'Compiling...'
g++ -Os -c -o AtlasCore.o AtlasCore.cpp
g++ -Os -c -o AtlasExtension.o AtlasExtension.cpp
g++ -Os -c -o AtlasFile.o AtlasFile.cpp
g++ -Os -c -o AtlasLogger.o AtlasLogger.cpp
g++ -Os -c -o AtlasMain.o AtlasMain.cpp
g++ -Os -c -o AtlasParser.o AtlasParser.cpp
g++ -Os -c -o AtlasStats.o AtlasStats.cpp
g++ -Os -c -o AtlasTypes.o AtlasTypes.cpp
g++ -Os -c -o GenericVariable.o GenericVariable.cpp
g++ -Os -c -o Pointer.o Pointer.cpp
g++ -Os -c -o PointerHandler.o PointerHandler.cpp
g++ -Os -c -o Table.o Table.cpp
g++ -o atlas AtlasCore.o AtlasExtension.o AtlasFile.o AtlasLogger.o AtlasMain.o AtlasParser.o AtlasStats.o AtlasTypes.o GenericVariable.o Pointer.o PointerHandler.o Table.o -ldl -lncurses
echo 'Done.'

