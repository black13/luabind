LUAJIT	= LuaJIT-2.0.1
LUABIND = luabind-0.9.1
BINDIR  = bin
CXXFLAGS =	-O2 -g -Wall -fmessage-length=0 -I ./LuaJIT-2.0.1/src -I ./luabind-0.9.1 -I ./boost-1.47.0 -I .
LINK     = -lm
OBJS  =		main.o test_attributes.o

LIBS  =

TARGET =	luabind.exe

$(TARGET):	$(OBJS) luajit luabind
	$(CXX) $(INCLUDES) -o $(TARGET) $(OBJS) $(LIBS) -lm ./$(BINDIR)/lua51.dll ./$(BINDIR)/luabind.a

all:	$(TARGET) luajit luabind

clean:
	rm -f $(OBJS) $(TARGET)

luajit:
	-mkdir .\$(BINDIR)
	$(MAKE) -C ./$(LUAJIT)
	@cp .\$(LUAJIT)\src\lua51.dll .\$(BINDIR)
	

luabind:
	-mkdir $(BINDIR)
	$(MAKE) -C ./$(LUABIND)
	@cp .\$(LUABIND)\luabind.a $(BINDIR)
