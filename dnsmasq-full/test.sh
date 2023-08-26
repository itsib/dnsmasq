#!/bin/bash

image=$(yq e -N -M '.image' -o=json -I=0 "./config.yaml")
version=$(yq e -N -M '.version' -o=json -I=0 "./config.yaml")
#archs=$(yq e -N -M '.arch' -o=json -I=0 "./config.yaml")
archs=$(yq e -N -M '.build_from | keys' -o=json -I=0 "./build.yaml")

echo "$image"
echo "$version"
echo "$archs"
