#!/bin/sh -l

echo "Building $1 and and generating pdf"
lyx --export pdf4 $1