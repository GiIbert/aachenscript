#!/usr/local_rwth/bin/zsh


### Job name
#SBATCH --job-name=translation

### Time
#SBATCH --time=1:00:00

### Memory
#SBATCH --mem-per-cpu=2G

### Request GPU
#SBATCH --gres=gpu:volta:1

### Output

#SBATCH --output=output.%J.txt

### Set email notification
#SBATCH --mail-user=16erty@gmail.com

### mail type: BEGIN, END, FAIL, REQUEUE, ALL
#SBATCH --mail-type=ALL


###regular shell commands
###Load modules
module unload intelmpi; module switch intel gcc
module load python/3.7.3
module load cuda/101
module load cudnn/7.6.5

###Install libraries
pip3 install --user torch==1.7.0+cu101 torchvision==0.8.1+cu101 torchaudio==0.7.0 -f https://download.pytorch.org/whl/torch_stable.html

git clone https://github.com/pytorch/fairseq
cd fairseq
pip3 install --user --editable ./
cd $HOME
git clone https://github.com/GiIbert/aachenscript
cd aachenscript
### Excute Training
bash train.sh
bash generate.sh