#!/bin/bash

rm out.txt
elixir --erl "-kernel standard_io_encoding latin1" small.exs > out.txt
md5sum small.txt
md5sum out.txt
