@echo off & title 存档同步器
:begin
set winscp=D:\\prohos\\pro\\WinSCP\\winscp.exe
cls & set choice=
echo 命令列表：
echo u: 上传
echo d: 下载
echo q: 退出
echo.
echo 游戏列表：
echo 1: 三国志11
echo 2: Wondering Souls
:input
set script=n
echo.
set /p choice= -
if %choice% equ u1 set script=us11
if %choice% equ d1 set script=ds11
if %choice% equ u2 set script=uws
if %choice% equ d2 set script=dws
if %script% equ n echo invalid command & goto input
:execute
%winscp% /console /script=%script%
goto input