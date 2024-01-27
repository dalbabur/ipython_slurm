#!/bin/bash

#SBATCH --job-name=ipy-engine-
#SBATCH --account=cheme
#SBATCH --partition=compute

#SBATCH --nodes=5
#SBATCH --ntasks-per-node=40
#SBATCH --mem=100G
#SBATCH --time=24:00:00
#SBATCH -o /mmfs1/home/dalba/ipython_slurm/ecfers/slurm_engine.out

srun apptainer run --bind /gscratch/cheme/dalba/repos/ECFERS /gscratch/cheme/dalba/ecfers_latest.sif ~/ipython_slurm/ecfers/launch_engine.sh
