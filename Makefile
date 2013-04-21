LUAJIT=LuaJIT-2.0.1
all: luajit
	echo "building test"
	g++ ./$(LUAJIT)/src/lua51.dll -I ./boost-1.47.0 -I ./luabind-0.9.1 -I ./$(LUAJIT)/src main.cpp -o test.exe -lm
	
luajit:
	$(MAKE) -C ./$(LUAJIT)/src
	
clean:
	$(MAKE) -C ./LuaJIT-2.0.1/src clean
