@echo off
IF NOT EXIST .\build\NUL mkdir build
cd build
IF NOT EXIST .\msNMake\NUL mkdir msNMake
cd msNMake
cmake ..\.. -G "NMake Makefiles" ^
            -DCMAKE_INSTALL_PREFIX=..\..\install\msNMake
nmake
nmake install
cd ..\..
