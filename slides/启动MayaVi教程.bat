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
::�����������Թ���Ա�������cmd��cd����ǰ�ļ��У�������Ҫ��������

::����jupyter notebook
jupyter notebook

::����ipython
::jupyter console

::����õ�Ƭ
::jupyter-nbconvert --to slides 04_mlab_pipeline.ipynb --reveal-prefix '//cdn.bootcss.com/reveal.js/3.2.0' --output pipeline
::python -m SimpleHTTPServer 8000
