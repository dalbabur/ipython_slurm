#!/bin/bash

#SBATCH --job-name=ipy-engine-
#SBATCH --account=cheme
#SBATCH --partition=compute

#SBATCH --nodes=5
#SBATCH --ntasks-per-node=40
#SBATCH --mem=4G
#SBATCH --time=2:00:00
#SBATCH -o /mmfs1/home/dalba/ipython_slurm/ecfers/slurm_engine.out

srun apptainer run /gscratch/cheme/dalba/ecfers_latest.sif ~/ipython_slurm/ecfers/launch_engine.sh
