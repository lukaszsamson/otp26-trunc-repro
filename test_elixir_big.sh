#!/bin/bash

rm out.txt
elixir --erl "-kernel standard_io_encoding latin1" big.exs > out.txt
md5sum big.txt
md5sum out.txt
