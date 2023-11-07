#!/bin/bash

rm out.txt
elixir --erl "-kernel standard_io_encoding latin1" -e "data = File.read!(\"in.txt\"); IO.binwrite(data)" > out.txt
md5sum in.txt
md5sum out.txt
