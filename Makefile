LUAJIT	= LuaJIT-2.0.1
LUABIND = luabind-0.9.1
BINDIR  = bin

all: luajit luabind
	echo "building test"
	
luajit:
	-mkdir $(BINDIR)
	$(MAKE) -C ./$(LUAJIT)/src
	copy .\$(LUAJIT)\src\lua51.dll $(BINDIR)
	
luabind:
	$(MAKE) -C ./$(LUABIND)
	copy .\$(LUABIND)\luabind.a $(BINDIR)

tests:
		$(MAKE) -C ./$(LUAJIT)/test
		
clean:
	$(MAKE) -C ./LuaJIT-2.0.1/src clean
