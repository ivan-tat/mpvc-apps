CC=i686-w64-mingw32-c++
ICONV=iconv -f UTF-8 -t WINDOWS-1251

clean:
	cd build; \
	rm -f *.cpp *.exe *.ini *.ora *.zip

all: mpvc-apps mpvc-odbc-conf
	cd build; \
	rm -f *.cpp *.exe *.ini *.ora

mpvc-apps: build/mpvc-apps.zip

build/mpvc-apps.zip: \
build/AddIzmLgot.exe \
build/ManagerLauncher.exe \
build/ManagerLauncher.ini \
build/kvar_11.exe \
build/kvit2010.exe
	cd build; \
	chmod +x *.exe; \
	zip mpvc-apps.zip *.exe *.ini -x dummy.exe

build/AddIzmLgot.exe:
	cd build; \
	ln -s -f dummy.exe AddIzmLgot.exe

build/ManagerLauncher.exe: build/dummy.exe
	cd build; \
	ln -s -f dummy.exe ManagerLauncher.exe

build/ManagerLauncher.ini:
	echo "# пустышка" >$@

build/kvar_11.exe: build/dummy.exe
	cd build; \
	ln -s -f dummy.exe kvar_11.exe

build/kvit2010.exe: build/dummy.exe
	cd build; \
	ln -s -f dummy.exe kvit2010.exe

build/dummy.exe: build/dummy.cpp
	${CC} build/dummy.cpp -o $@

build/dummy.cpp: src/dummy.cpp
	${ICONV} src/dummy.cpp -o $@

mpvc-odbc-conf: build/mpvc-odbc-conf.zip

build/mpvc-odbc-conf.zip: \
build/listener.ora \
build/sqlnet.ora \
build/tnsnames.ora
	cd build; \
	zip mpvc-odbc-conf.zip *.ora

build/listener.ora \
build/sqlnet.ora \
build/tnsnames.ora:
	echo "# пустышка" >$@
