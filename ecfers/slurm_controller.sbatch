#!/bin/bash

#SBATCH --job-name=ipy-controller
#SBATCH --account=cheme
#SBATCH --partition=compute

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=10G
#SBATCH --time=48:00:00
#SBATCH -o /mmfs1/gscratch/stf/dalba/ipython_ecfers_logs/slurm_controller.out

sh ~/ipython_slurm/ecfers/launch_ecfers.sh
apptainer exec instance://container ~/ipython_slurm/ecfers/launch_controller.sh
