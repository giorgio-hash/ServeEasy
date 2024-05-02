@echo off
cd /d "./db/db_data"
del /s /q *
for /d %%i in (*) do rd /s /q "%%i"
