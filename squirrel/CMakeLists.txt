CMAKE_MINIMUM_REQUIRED(VERSION 2.6)

SET(squirrel_SRC
	sqapi.cpp
	sqbaselib.cpp
	sqclass.cpp
	sqcompiler.cpp
	sqdebug.cpp
	sqfuncstate.cpp
	sqlexer.cpp
	sqmem.cpp
	sqobject.cpp
	sqstate.cpp
	sqtable.cpp
	sqvm.cpp
)

SET(squirrel_INCLUDE
	sqarray.h
	sqclass.h
	sqclosure.h
	sqcompiler.h
	sqfuncproto.h
	sqfuncstate.h
	sqlexer.h
	sqobject.h
	sqopcodes.h
	sqpcheader.h
	sqstate.h
	sqstring.h
	sqtable.h
	squserdata.h
	squtils.h
	sqvm.h
)

INCLUDE_DIRECTORIES(../include)

ADD_LIBRARY(squirrel ${squirrel_SRC} ${squirrel_INCLUDE})
