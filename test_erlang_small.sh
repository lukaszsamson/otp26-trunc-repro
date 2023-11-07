#!/bin/bash

rm out.txt
erl -noshell -eval "io:setopts(standard_io, [{encoding, latin1}]), {ok, Data} = file:read_file(\"small.txt\"), file:write(standard_io, Data), erlang:halt()." > out.txt
md5sum small.txt
md5sum out.txt
