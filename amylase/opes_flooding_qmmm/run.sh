#!/bin/bash
#PBS -l select=1:ncpus=16:mpiprocs=16:ngpus=1
#PBS -l walltime=24:00:00
#PBS -j oe
#PBS -N chrosimate 
#PBS -q gpu

cd $PBS_O_WORKDIR
module load gcc-8.5.0/cp2k-9.1.0 

mpirun -np 16 cp2k.popt react_nvt-ee_dft_opes.inp >> OUTPUT

