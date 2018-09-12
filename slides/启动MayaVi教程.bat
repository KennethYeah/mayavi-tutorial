@echo off
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (goto UACPrompt
)else ( goto gotAdmin )
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
cd /d %~dp0
::以上命令是以管理员身份运行cmd并cd到当前文件夹，下面是要处理的命令。

::启动jupyter notebook
jupyter notebook

::启动ipython
::jupyter console

::编译幻灯片
::jupyter-nbconvert --to slides 04_mlab_pipeline.ipynb --reveal-prefix '//cdn.bootcss.com/reveal.js/3.2.0' --output pipeline
::python -m SimpleHTTPServer 8000
