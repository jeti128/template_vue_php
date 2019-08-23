#!/bin/bash

shopt -s extglob
rm -rf ./builded/!(backend|assets)
cp -R ./dist/. ./builded/
