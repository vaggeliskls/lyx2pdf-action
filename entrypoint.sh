#!/bin/sh -l

echo "CurrentTime $1"
time=$(date)
echo "::set-output name=time::$time"