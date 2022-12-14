#!/bin/bash

se_nlp_path=$1
roberta_large_path=$2
checkpoint_path=$3
data_path=$4

cd $se_nlp_path
source venv/bin/activate

export PYTHONPATH=$se_nlp_path

python explain/trainer.py \
--bert_path $roberta_large_path \
--data_dir $data_path \
--task sst5 \
--checkpoint_path $checkpoint_path \
--save_path . \
--gpus=1 \
--mode eval \
--batch_size 4