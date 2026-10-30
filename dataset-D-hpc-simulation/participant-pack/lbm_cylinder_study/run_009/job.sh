#!/bin/bash
#SBATCH --job-name=lbm_run_009
#SBATCH --nodes=1
#SBATCH --ntasks=64
#SBATCH --mem=60G
#SBATCH --time=24:00:00
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=m.okafor@example.org

module load Python/3.11.3-GCCcore-12.3.0
module load OpenMPI/4.1.5-GCC-12.3.0
source /mnt/parscratch/users/aca21xy/venvs/lbm/bin/activate

cd /mnt/parscratch/users/aca21xy/lbm/run_009
mpirun -n 64 python /mnt/parscratch/users/aca21xy/lbm/solver/lbm2d.py input.yaml
