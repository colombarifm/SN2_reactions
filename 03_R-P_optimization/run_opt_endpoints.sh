#!/bin/bash

#SBATCH --job-name=opt_ts
#SBATCH --partition=cpu
#SBATCH --time=00:10:00
#SBATCH --mem=4G
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1

module load ORCA/6.1.1

export OMP_NUM_THREADS=${SLURM_NTASKS_PER_CORE}

orca opt_R.inp > opt_R.out

orca opt_P.inp > opt_P.out

orca freq_R.inp > freq_R.out

orca freq_P.inp > freq_P.out
