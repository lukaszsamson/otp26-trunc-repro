@echo off
REM Delete out.txt if it exists
if exist out.txt del out.txt

REM Run the Erlang script and redirect output to out.txt
erl -noshell -eval "io:setopts(standard_io, [{encoding, latin1}]), {ok, Data} = file:read_file(\"in.txt\"), io:format('~s', [Data]), erlang:halt()." > out.txt

REM Compute and display the MD5 hash for in.txt
certutil -hashfile in.txt MD5

REM Compute and display the MD5 hash for out.txt
certutil -hashfile out.txt MD5
