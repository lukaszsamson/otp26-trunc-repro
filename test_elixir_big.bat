@echo off
REM Delete out.txt if it exists
if exist out.txt del out.txt

REM Run the Erlang script and redirect output to out.txt
call elixir --erl "-kernel standard_io_encoding latin1" big.exs > out.txt

REM Compute and display the MD5 hash for in.txt
certutil -hashfile big.txt MD5

REM Compute and display the MD5 hash for out.txt
certutil -hashfile out.txt MD5
