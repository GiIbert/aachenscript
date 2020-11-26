/rwthfs/rz/cluster/home/xz416747/.local/bin/fairseq-generate data-bin/enta \
 --task translation \
 --path $HOME/aachenscript/checkpoints/checkpoint_best.pt \
 --batch-size 32 --beam 5 \
 --results-path  $HOME/aachenscript/generation_results \
 --tokenizer moses \
--remove-bpe sentencepiece
