#!/usr/bin/env bash
set -e

# get this script's directory and go there
scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd "${scriptdir}"

image_dirs="
base
build_tools_base
miniconda_python35
"
# eventually
#jupyter-nb

for image in $image_dirs;
do
    dir=$scriptdir/$image
    echo ""
    echo "============== building $image ================"
    echo "Testing for Dockerfile in: $dir"
    if [ -f "$dir/Dockerfile" ]; then
        echo "Found Dockerfile, building"
        docker build -t "dctest/$image" "$dir"
    else
        echo "Could not find Dockerfile: $dir/Dockerfile"
    fi
    echo "============== done building $image ==========="
done

popd
