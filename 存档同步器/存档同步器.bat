@echo off & title �浵ͬ����
:begin
set winscp=D:\\prohos\\pro\\WinSCP\\winscp.exe
cls & set choice=
echo �����б�
echo u: �ϴ�
echo d: ����
echo q: �˳�
echo.
echo ��Ϸ�б�
echo 1: ����־11
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