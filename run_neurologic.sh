#!/bin/bash

NEUROLOGIC_PATH=$1
PROMPT_FILE=$2
CONSTRAINT_FILE=$3
OUTPUT_FILE=$4
MODEL_DIR=$5

cd $NEUROLOGIC_PATH
source venv/bin/activate

export PYTHONPATH=$NEUROLOGIC_PATH
cd zero_shot

python decode_pt.py --model_name ${MODEL_DIR} \
  --output_file ${OUTPUT_FILE} \
  --constraint_file ${CONSTRAINT_FILE} \
  --input_path ${PROMPT_FILE} \
  --batch_size 2 --beam_size 20 --max_tgt_length 256 --min_tgt_length 10 \
  --ngram_size 2 --length_penalty 0.3 \
  --prune_factor 500000 --sat_tolerance 2 --beta 1.25 --early_stop 10000