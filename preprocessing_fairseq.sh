TEXT=./dataset
/home/xz416747/.local/bin/fairseq-preprocess --source-lang en --target-lang ta \
    --trainpref $TEXT/train --validpref $TEXT/val --testpref $TEXT/test \
    --destdir ./data-bin/enta \
    --workers 20
