@echo off
REM REM=skip this line when process .bat file
title Light weight task manager [created by Jamie Johns]
REM above sets title of program
REM @echo off = turn off typical text outputs that you see when running command in CMD
REM This file was created Jamie Johns 2018
REM As a lightweight taskmanager (for killing tasks)
color 1E
REM above sets colour of command window background to blue (1)
REM and text colour to yellow (E)
REM where "1E" means blue background and yellow text
echo ######################### Light-weight task manager ###########################
echo                        Created by Jamie Johns 2018
echo Program Description: 
echo            Program is alternative for task termination when task manager is not
echo            responding (for whatever reason).
echo:
echo            Note that termination of some tasks may require administration
echo            privileges (run this program in administration mode).
echo ###############################################################################
echo:
echo: 
REM "echo:" tells program to skip line (creates blank line)                                                                          
echo On continuing the program, a list of running tasks will be printed
echo Following which, you need to choose a task to terminate.
pause
REM previous line cause program to pause until key is pressed
:while_loop_begin
REM above simulates while loop (the beginning of while loop)
echo ========================= ======== ================ =========== ============
echo Image Name                     PID Session Name        Session#    Mem Usage
echo ========================= ======== ================ =========== ============
tasklist /NH | SORT
REM above prints list of currently running processess in alphabetic order
echo ========================= ======== ================ =========== ============
echo Image Name                     PID Session Name        Session#    Mem Usage
echo ========================= ======== ================ =========== ============
echo:
echo Below, enter image name to terminate the related task..
set /p tsk="Enter task to terminate(i.e- word.exe): "
REM above takes user response and stores as variable "tsk"
echo:
echo Result $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
taskkill /im %tsk%
REM above kills task of image name (/nm) specified by user ("tsk")
REM if image name tsk exists: this tasked is terminated
REM else, nothing happens and error message is flashed
echo $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo:
echo Press key to refresh tasklist and terminate a task
echo otherwise, exit the program.
echo:
pause
goto :while_loop_begin
REM to give user option to redo tasklist/taskkill;
REM above tells program to return to while loop beginning
REM [note; to simulate a condition for breaking "while loop", need to apply an if loop"