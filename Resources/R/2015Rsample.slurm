#!/bin/bash

# To give your job a name, replace "MyJob" with an appropriate name
#SBATCH --job-name=Rsample

# For R need to run on single CPU
#SBATCH --ntasks=1

# set your minimum acceptable walltime=hours:minutes:seconds
#SBATCH -t 0:15:00

# Specify your email address to be notified of progress.
# SBATCH --mail-user=youreamiladdress@unimelb.edu
# SBATCH --mail-type=ALL

# Load the environment variables for R
module purge
source /usr/local/module/spartan_old.sh
module load R/3.5.0-GCC-6.2.0 

# The command to actually run the job
R --vanilla < tutorial.R 
