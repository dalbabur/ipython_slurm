#!/bin/bash
apptainer instance run --bind /gscratch/cheme/dalba/repos/ECFERS /gscratch/cheme/dalba/ecfers_latest.sif container_$SLURM_TASK_PID 
apptainer exec instance://container_$SLURM_TASK_PID ~/ipython_slurm/ecfers/launch_engine.sh
wait
