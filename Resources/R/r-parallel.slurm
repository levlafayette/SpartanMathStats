#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --time=00:10:00

module purge
/usr/local/module/spartan_old.sh
module load R/3.5.0-spartan_gcc-6.2.0
module load Rmpi

# Always use -n 1 for the Rmpi package. It spawns additional processes
# dynamically


mpirun -n 1 R CMD BATCH --no-save --no-restore xvalidate.R xvalidate.out
