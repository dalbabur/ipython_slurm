#!/bin/bash

#SBATCH --job-name=ipy-engine-
#SBATCH --account=cheme
#SBATCH --partition=compute

#SBATCH --nodes=15
#SBATCH --ntasks-per-node=40
#SBATCH --mem=100G
#SBATCH --time=24:00:00
#SBATCH -o /mmfs1/gscratch/stf/dalba/ipython_ecfers_logs/slurm_engine.out
#SBATCH --cpus-per-task=1

srun cd /mmfs1/gscratch/cheme/dalba/repos/ECFERS
srun apptainer run --bind /mmfs1/gscratch/cheme/dalba/repos/ECFERS /gscratch/cheme/dalba/ecfers_latest.sif ~/ipython_slurm/ecfers/launch_engine.sh
