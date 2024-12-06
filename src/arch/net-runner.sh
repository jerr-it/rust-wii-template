#!/bin/bash
set -e

args=("$@")

build_path=${args[0]}

build_path=$(realpath $build_path)

$DEVKITPRO/tools/bin/elf2dol $build_path $build_path.dol

wiiload_bin=$(realpath $WIILOAD_BIN)

$wiiload_bin $build_path.dol