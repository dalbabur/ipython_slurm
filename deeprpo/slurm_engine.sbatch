#!/bin/bash

#SBATCH --job-name=ipy-engine-
#SBATCH --account=cheme
#SBATCH --partition=compute

#SBATCH --nodes=2
#SBATCH --ntasks-per-node=5
#SBATCH --cpus-per-task=8
#SBATCH --mem=100G
#SBATCH --time=5:00:00
#SBATCH -o /mmfs1/home/dalba/ipython_slurm/deeprpo/slurm_engine.out

srun apptainer run /gscratch/cheme/dalba/deeprpo_latest.sif ~/ipython_slurm/deeprpo/launch_engine.sh
