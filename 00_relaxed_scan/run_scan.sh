#!/bin/bash

#SBATCH --job-name=sn2_scan
#SBATCH --partition=cpu
#SBATCH --time=00:10:00
#SBATCH --mem=4G
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1

module load ORCA/6.1.1

export OMP_NUM_THREADS=${SLURM_NTASKS_PER_CORE}

orca scan.inp > scan.out

grep -v ">" scan.allxyz > scan_final.xyz
