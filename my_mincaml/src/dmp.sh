#!/bin/bash

riscv32-unknown-elf-objdump -D $1 > $1.dmp
code $1.dmp