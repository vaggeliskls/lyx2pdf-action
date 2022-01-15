#!/usr/bin/env bash
set -e

echo "Building $1 and and generating pdf"
lyx --export pdf4 $1