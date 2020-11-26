# Scripts for training

## Description

The original datasets are in the dataset directory. 
use the following script to apply moses and bpe to these datasets.
bash preprocessing.sh
The processed datasets are generated in processed_dataset.

Then use preprocessing_fairseq.sh to generate binarized dataset required by fairseq

These procedure can be done locally.

Pretrained bpe models are in bpe_models

## Pipline
To be improved

each one make a branch, and after each time the new processed datasets and training configuration are made, commit them. Then you can git clone them on aachen cluster and submit the task.

## Instructions on using Aachen cluster

1. User Cisco Anyconnect to connect to Aachen VPN. Here you shuold input your VPN password
2. ssh {YOUR USER NAME!!!}@login18-g-2.hpc.itc.rwth-aachen.de 
    Input your HPC password
3. git clone https://github.com/GiIbert/aachenscript
4. cd aachenscript
5. sbatch task.sh


## Required libraries
Some libraries are used to process datasets. Instructions for installation can be found in their repos.

sentencepiece https://github.com/google/sentencepiece
fairseq  https://github.com/pytorch/fairseq
sacremoses https://github.com/alvations/sacremoses

If you want to use the sentencepiece in the script, you should install sentence piece command line tools, which requries you to compile it. Otherwise, you can write a python script instead. Using vcpkg is also an option, and it's developed by MicroSoft, which might be friendly for Windows users, but I have not tried it.