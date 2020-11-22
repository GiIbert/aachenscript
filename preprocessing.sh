#!/bin/sh

sacremoses -l ta -j 4 tokenize < dataset/test.ta > dataset/test_moses.ta
sacremoses -l ta -j 4 tokenize < dataset/train.ta > dataset/train_moses.ta
sacremoses -l ta -j 4 tokenize < dataset/val.ta > dataset/val_moses.ta
sacremoses -l ta -j 4 tokenize < dataset/test.en > dataset/test_moses.en
sacremoses -l ta -j 4 tokenize < dataset/train.en > dataset/train_moses.en
sacremoses -l ta -j 4 tokenize < dataset/val.en > dataset/val_moses.en


spm_encode --model=./bpe_models/ta.wiki.bpe.vs50000.model --output_format=piece < dataset/test_moses.ta  > dataset/test_bpe.ta
spm_encode --model=./bpe_models/ta.wiki.bpe.vs50000.model --output_format=piece < dataset/val_moses.ta  > dataset/val_bpe.ta
spm_encode --model=./bpe_models/ta.wiki.bpe.vs50000.model --output_format=piece < dataset/train_moses.ta  > dataset/train_bpe.ta
spm_encode --model=./bpe_models/ta.wiki.bpe.vs50000.model --output_format=piece < dataset/test_moses.en > dataset/test_bpe.en
spm_encode --model=./bpe_models/ta.wiki.bpe.vs50000.model --output_format=piece < dataset/val_moses.en  > dataset/val_bpe.en
spm_encode --model=./bpe_models/ta.wiki.bpe.vs50000.model --output_format=piece < dataset/train_moses.en > dataset/train_bpe.en


TEXT=./dataset
fairseq-preprocess --source-lang en --target-lang ta \
    --trainpref $TEXT/train --validpref $TEXT/val --testpref $TEXT/test \
    --destdir ./data-bin/enta \
    --workers 1
