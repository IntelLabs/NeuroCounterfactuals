#!/bin/bash

coco_ex_path=$1
stanford_parser_path=$2

cd $stanford_parser_path
for file in find . -name "*.jar"; do export CLASSPATH="$CLASSPATH:`realpath $file`"; done;
cd $coco_ex_path
source venv/bin/activate
python CoCo-Ex_entity_extraction.py "imdb_sents_train.csv" "imdb_sents_train.tsv"
python CoCo-Ex_overhead_filter.py --inputfile "imdb_sents_train.tsv" --outputfile "imdb_sents_train_filtered.tsv" --len_diff_tokenlevel 1 --len_diff_charlevel 10 --dice_coefficient 0.85