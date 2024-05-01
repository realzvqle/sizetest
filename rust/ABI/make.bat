@echo off

rustc src/main.rs -C link-arg=USER32.LIB -O