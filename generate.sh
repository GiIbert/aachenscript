/rwthfs/rz/cluster/home/xz416747/.local/bin/fairseq-generate data-bin/enta \
 --task translation \
 --path checkpoints/checkpoint_best.pt \
 --batch-size 32 --beam 5 \
 --results-path ./ \
 --tokenizer moses \
--remove-bpe sentencepiece
