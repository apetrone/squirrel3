CMAKE_MINIMUM_REQUIRED(VERSION 2.6)

SET(squirrel_SRC
	sq.c
)

INCLUDE_DIRECTORIES(../include)

ADD_EXECUTABLE(sq ${squirrel_SRC})
TARGET_LINK_LIBRARIES(sq sqstdlib squirrel)