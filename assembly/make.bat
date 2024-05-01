@echo off


nasm -f win32 main.asm
link /SUBSYSTEM:WINDOWS /ENTRY:main user32.lib kernel32.lib main.obj
del *.obj