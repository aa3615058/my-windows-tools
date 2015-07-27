@mode con lines=20 cols=40 &@color 0E
@echo off & title 网络切换器
:begin
cls & set choice=
echo 1.实验室 自动获取IP
echo 2.校园网 静态IP网关DNS
echo 3.校园网 游戏专用网段 114.214.46.*
echo 4.退出
echo.
set /p choice=请选择： 
if %choice% equ 1 goto auto
if %choice% equ 2 goto label
if %choice% equ 3 goto labelb
if %choice% equ 4 exit
echo 输入不正确，请重新输入！&pause>nul & goto begin
:auto
echo 正在自动获取IP地址....
netsh interface ip set address name="本地连接" source=dhcp
set/p=完成！<nul & pause & goto begin
:label
cls & echo 正在设置IP地址和子网掩码...
netsh interface ip set address "本地连接" static addr=114.214.46.51 mask=255.255.255.0
echo 正在设置网关...
netsh interface ip add address "本地连接" gateway=114.214.46.254 gwmetric=1
echo 正在设置DNS...
netsh interface ip set dns "本地连接" static addr=202.194.40.1 primary
set/p=完成！<nul & pause & goto begin
:labelb
cls & echo 正在设置IP地址和子网掩码...
netsh interface ip set address "本地连接" static addr=114.214.46.77 mask=255.255.255.0
set/p=完成！<nul & pause & goto begin