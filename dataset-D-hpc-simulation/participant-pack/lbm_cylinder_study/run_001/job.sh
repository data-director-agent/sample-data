#!/bin/bash
#SBATCH --job-name=lbm_run_001
#SBATCH --nodes=1
#SBATCH --ntasks=32
#SBATCH --mem=120G
#SBATCH --time=12:00:00
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=m.okafor@example.org

module load Python/3.11.3-GCCcore-12.3.0
module load OpenMPI/4.1.5-GCC-12.3.0
source /mnt/parscratch/users/aca21xy/venvs/lbm/bin/activate

cd /mnt/parscratch/users/aca21xy/lbm/run_001
mpirun -n 32 python /mnt/parscratch/users/aca21xy/lbm/solver/lbm2d.py input.yaml
