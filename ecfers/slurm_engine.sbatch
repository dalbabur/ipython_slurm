#!/bin/bash

#SBATCH --job-name=ipy-engine-
#SBATCH --account=cheme
#SBATCH --partition=compute

#SBATCH --nodes=3
#SBATCH --ntasks-per-node=40
#SBATCH --mem=4G
#SBATCH --time=2:00:00
#SBATCH -o slurm_engine.out

srun apptainer run /gscratch/cheme/dalba/ecfers_latest.sif ~/launch_engine.sh
