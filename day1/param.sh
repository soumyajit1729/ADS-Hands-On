#!/bin/bash

#SBATCH --partition=gpu-low
#SBATCH --gres=gpu:1


srun -p gpu-low --reservation=mcredcourse-d1 --container-image /scratch/nvdialogin1/ai_pytorch/nvidia+pytorch+20.12-py3.sqsh --container-mounts /$SCRATCH/day1:/workspace --gres=gpu:1 sh /workspace/benchmark.sh
