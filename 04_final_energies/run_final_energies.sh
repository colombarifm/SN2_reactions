#!/bin/bash

#SBATCH --job-name=final_E
#SBATCH --partition=cpu
#SBATCH --time=00:20:00
#SBATCH --mem=4G
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1

module load ORCA/6.1.1

export OMP_NUM_THREADS=${SLURM_NTASKS_PER_CORE}

orca sp_R.inp  > sp_R.out

orca sp_TS.inp > sp_TS.out

orca sp_P.inp  > sp_P.out
