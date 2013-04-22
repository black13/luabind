CC = g++
FLAGS = -g -Wall -I ../LuaJIT-2.0.1/src -I ../boost-1.47.0 -I .

OBJS = src/class.o\
src/class_info.o\
src/class_registry.o\
src/class_rep.o\
src/create_class.o\
src/error.o\
src/exception_handler.o\
src/function.o\
src/inheritance.o\
src/link_compatibility.o\
src/object_rep.o\
src/open.o\
src/pcall.o\
src/scope.o\
src/stack_content_by_name.o\
src/weak_ref.o\
src/wrapper_base.o

VPATH = src/

luabind.a: $(OBJS)
	ar $(ARFLAGS) $@ $^

clean:
	del src\*.o src\*.a

%.o : %.cpp
	$(CC) $(INCLUDES) $(FLAGS) -c -o $@ $<