LUAJIT	= LuaJIT-2.0.1
LUABIND = luabind-0.9.1
BINDIR  = bin

all: luajit luabind
	echo "building test"
	g++ -I ./boost-1.47.0 -I ./luabind-0.9.1 -I ./$(LUAJIT)/src main.cpp -o test.exe -lm ./$(BINDIR)/lua51.dll ./$(BINDIR)/luabind.a
	
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
