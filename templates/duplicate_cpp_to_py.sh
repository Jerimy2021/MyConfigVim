#!/bin/bash
# This script duplicates a C++ file to a Python file
# Usage: duplicate_cpp_to_py.sh <cpp_file>


# Obtener el nombre del archivo sin extensión
filename=$(basename -- "$1")
filename_noext="${filename%.*}"

# Duplicar el archivo .cpp
cp "$1" "$filename_noext.py"

