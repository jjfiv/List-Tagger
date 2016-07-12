#!/bin/bash


HERE="/mnt/nfs/work3/jfoley/reu-tagging/severhal/List-Tagger/forJohn"
source "${HERE}/../..//py27/bin/activate"

set -eu

INPUT_FILE=$2
OUTPUT_FILE=$1

export NLTK_DATA=/mnt/nfs/work3/jfoley/nltk_data

(cd /mnt/lustre/godzilla/jfoley)
python ${HERE}/cluster_features.py ${INPUT_FILE} ${OUTPUT_FILE}

