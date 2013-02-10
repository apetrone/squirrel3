CMAKE_MINIMUM_REQUIRED(VERSION 2.6)

SET(squirrel_SRC
	sqstdaux.cpp
	sqstdblob.cpp
	sqstdio.cpp
	sqstdmath.cpp
	sqstdrex.cpp
	sqstdstream.cpp
	sqstdstring.cpp
	sqstdsystem.cpp
)

SET(squirrel_INCLUDE
	sqstdblobimpl.h
	sqstdstream.h
)

INCLUDE_DIRECTORIES(../include)

ADD_LIBRARY(sqstdlib ${squirrel_SRC} ${squirrel_INCLUDE})