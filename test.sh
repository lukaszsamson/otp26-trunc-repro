#!/bin/bash

rm out.txt
erl -noshell -kernel standard_io_encoding latin1 -eval "io:setopts(standard_io, [{encoding, latin1}]), {ok, Data} = file:read_file(\"in.txt\"), io:format('~s', [Data]), erlang:halt()" > out.txt
md5sum in.txt
md5sum out.txt
