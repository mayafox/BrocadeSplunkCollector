@echo off
REM Sample bat file to set things right and launch collector
set LOG_CFG=log.yaml
REM this should be the directory containing python files
set WORK_DIR = C:\python-slx-collector\
cd "%WORK_DIR%"
REM chose python according to protobuf and Splunk ;
REM At the time of this POC, it was Python27
REM Below port is the one which is registered as a collector on SLX
python.exe collector_main.py server --port 54321 --json "%WORK_DIR%"