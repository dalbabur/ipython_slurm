#!/bin/bash

#SBATCH --job-name=ipy-controller
#SBATCH --account=cheme
#SBATCH --partition=compute

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=4G
#SBATCH --time=2:00:00
#SBATCH -o slurm_controller.out

sh ~/launch_ecfers.sh
apptainer exec instance://container ~/launch_controller.sh
