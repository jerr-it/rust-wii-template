#!/bin/bash
set -e

args=("$@")

build_path=${args[0]}

build_path=$(realpath $build_path)

$DEVKITPRO/tools/bin/elf2dol $build_path $build_path.dol

flatpak run org.DolphinEmu.dolphin-emu -e $build_path.dol