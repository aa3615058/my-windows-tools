@mode con lines=20 cols=40 &@color 0E
@echo off & title �����л���
:begin
cls & set choice=
echo 1.ʵ���� �Զ���ȡIP
echo 2.У԰�� ��̬IP����DNS
echo 3.У԰�� ��Ϸר������ 114.214.46.*
echo 4.�˳�
echo.
set /p choice=��ѡ�� 
if %choice% equ 1 goto auto
if %choice% equ 2 goto label
if %choice% equ 3 goto labelb
if %choice% equ 4 exit
echo ���벻��ȷ�����������룡&pause>nul & goto begin
:auto
echo �����Զ���ȡIP��ַ....
netsh interface ip set address name="��������" source=dhcp
set/p=��ɣ�<nul & pause & goto begin
:label
cls & echo ��������IP��ַ����������...
netsh interface ip set address "��������" static addr=114.214.46.51 mask=255.255.255.0
echo ������������...
netsh interface ip add address "��������" gateway=114.214.46.254 gwmetric=1
echo ��������DNS...
netsh interface ip set dns "��������" static addr=202.194.40.1 primary
set/p=��ɣ�<nul & pause & goto begin
:labelb
cls & echo ��������IP��ַ����������...
netsh interface ip set address "��������" static addr=114.214.46.77 mask=255.255.255.0
set/p=��ɣ�<nul & pause & goto begin