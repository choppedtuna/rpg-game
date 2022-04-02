#!/bin/sh

for file in *.project.json; do
    rojo build $file -o "builds/${file%.project.json}.rbxlx"
done