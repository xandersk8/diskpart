@echo off
mode con lines=22 cols=86
color 9F
echo>list.txt
echo>list.txt list disk
@echo on
diskpart -s list.txt
@echo off
set /p disco="Entre com o Disco: "
set /p format="Entre com a Particao: "
set /p nome="Entre com o nome: "
echo:
echo>move.txt
echo>move.txt list disk
echo>>move.txt select disk %disco%
echo>>move.txt clean
echo>>move.txt create partition primary
echo>>move.txt format fs=%format% quick label=%nome%
echo>>move.txt active
echo>>move.txt assign
@echo off
diskpart -s move.txt
del /f list.txt
del /f move.txt
pause
exit /b
