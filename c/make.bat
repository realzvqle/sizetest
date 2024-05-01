@echo off

cl -Ox /c src/*.c 
link /SUBSYSTEM:WINDOWS *.obj User32.lib /ENTRY:main /OUT:build/main.exe
del *.obj