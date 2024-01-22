#!/bin/bash
#PBS -l select=1:ncpus=32:mpiprocs=32
#PBS -l walltime=24:00:00
#PBS -j oe
#PBS -N chrosimate 
#PBS -q cpu

cd $PBS_O_WORKDIR
module load amd_apps/gcc-8.5.0/cp2k-9.1.0

mpirun -np 32 cp2k.popt react_nvt-ee_dft_opes.inp >> OUTPUT

