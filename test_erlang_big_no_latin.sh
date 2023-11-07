#!/bin/bash

rm out.txt
erl -noshell -eval "{ok, Data} = file:read_file(\"big.txt\"), file:write(standard_io, Data), erlang:halt()." > out.txt
md5sum big.txt
md5sum out.txt
