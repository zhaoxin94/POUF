#!/usr/bin/env bash
# Model tuning
# ViTB-16, Office31
#CUDA_VISIBLE_DEVICES=0 python pouf.py data/office31 -d Office31 -s A -t W --epochs 10 --seed 1 --log logs/pouf/Office31_A2W
#CUDA_VISIBLE_DEVICES=0 python pouf.py data/office31 -d Office31 -s W -t D --epochs 10 --seed 1 --log logs/pouf/Office31_W2D
#CUDA_VISIBLE_DEVICES=0 python pouf.py data/office31 -d Office31 -s D -t A --epochs 10 --seed 1 --log logs/pouf/Office31_D2A

# Prompt tuning
# ViTB-16, Office31
CUDA_VISIBLE_DEVICES=0 python pouf.py data/office31 -d Office31 -s A -t W --epochs 10 --seed 1 --log logs/pouf/Office31_A2W --learn-prompt -plr 0.1
CUDA_VISIBLE_DEVICES=0 python pouf.py data/office31 -d Office31 -s W -t D --epochs 10 --seed 1 --log logs/pouf/Office31_W2D --learn-prompt -plr 0.1
CUDA_VISIBLE_DEVICES=0 python pouf.py data/office31 -d Office31 -s D -t A --epochs 10 --seed 1 --log logs/pouf/Office31_D2A --learn-prompt -plr 0.1


# CUDA_VISIBLE_DEVICES=0 python pouf.py data/officehome -d OfficeHome -s Ar -t Cl --epochs 10 --seed 1 --log logs/pouf/OfficeHome_Ar2Cl --learn-prompt -plr 0.1
# CUDA_VISIBLE_DEVICES=0 python pouf.py data/officehome -d OfficeHome -s Cl -t Pr --epochs 10 --seed 1 --log logs/pouf/OfficeHome_Cl2Pr --learn-prompt -plr 0.1
# CUDA_VISIBLE_DEVICES=0 python pouf.py data/officehome -d OfficeHome -s Pr -t Rw --epochs 10 --seed 1 --log logs/pouf/OfficeHome_Pr2Rw --learn-prompt -plr 0.1
# CUDA_VISIBLE_DEVICES=0 python pouf.py data/officehome -d OfficeHome -s Rw -t Ar --epochs 10 --seed 1 --log logs/pouf/OfficeHome_Rw2Ar --learn-prompt -plr 0.1


