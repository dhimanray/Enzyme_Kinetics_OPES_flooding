#!/bin/bash

source /home/dray@iit.local/.bashrc

gmx_mpi grompp -f md.mdp -c structure.pdb -p complex_GMX.top -o prd.tpr 

export OMP_NUM_THREADS=2

mpiexec -n 4 gmx_mpi mdrun -deffnm prd -nsteps 50000000 -plumed plumed.dat -gpu_id 1 -pin on -pinoffset 48
