@echo off


cl /c /EHsc -Ox src/*.cpp
link *.obj user32.lib
del *.obj 