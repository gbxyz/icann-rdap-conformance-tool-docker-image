#!/bin/bash

rm -rf results

mkdir results

java -jar tool/bin/rdapct-1.0.jar -c config.json "$@" 1>&2

cat results/*
