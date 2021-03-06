#!/bin/sh

# This example shows how to use the available datasets to
# train a CNN  with TensorFlow. Investigate the cnn_with_own_data_ex2.py file to find out how to directly access the available datasets from your code.

#SBATCH -A C3SE-STAFF
#SBATCH -p alvis
#SBATCH -t 01-00:00:00
#SBATCH --gpus-per-node=V100:3


ml GCC/8.3.0 CUDA/10.1.243 OpenMPI/3.1.4 TensorFlow/2.1.0-Python-3.7.4
ml Pillow/6.2.1

python cnn_with_own_data_ex2.py > res_ex2.out
