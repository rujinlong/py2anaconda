#!/bin/bash

set -ex

export ANACONDA_API_TOKEN=$INPUT_ANACONDATOKEN
cd $GITHUB_WORKSPACE

conda mambabuild  --output-folder $GITHUB_WORKSPACE $INPUT_CONDADIR

anaconda upload --force --label main $GITHUB_WORKSPACE/**/*.tar.bz2