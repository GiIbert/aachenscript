sacremoses -l ta -j 4 tokenize < dataset/test.en > processed_dataset/test_moses.en
sacremoses -l ta -j 4 tokenize < dataset/train.en > processed_dataset/train_moses.en
sacremoses -l ta -j 4 tokenize < dataset/val.en > processed_dataset/val_moses.en


spm_encode --model=./bpe_models/ta.wiki.bpe.vs50000.model --output_format=piece < dataset/test.ta  > processed_dataset/test_bpe.ta
spm_encode --model=./bpe_models/ta.wiki.bpe.vs50000.model --output_format=piece < dataset/val.ta  > processed_dataset/val_bpe.ta
spm_encode --model=./bpe_models/ta.wiki.bpe.vs50000.model --output_format=piece < dataset/train.ta  > processed_dataset/train_bpe.ta
spm_encode --model=./bpe_models/en.wiki.bpe.vs5000.model --output_format=piece < dataset/test_moses.en > processed_dataset/test_bpe.en
spm_encode --model=./bpe_models/en.wiki.bpe.vs5000.model --output_format=piece < dataset/val_moses.en  > processed_dataset/val_bpe.en
spm_encode --model=./bpe_models/en.wiki.bpe.vs5000.model --output_format=piece < dataset/train_moses.en > processed_dataset/train_bpe.en

