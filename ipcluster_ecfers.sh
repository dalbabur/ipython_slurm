#!/bin/bash
srun -A stf -p compute --nodes=1 --time=24:00:00 --ntasks-per-node=1 --mem=1G ipcluster start --profile=cheme-ecfers --n=15 #--cluster-id="test"
