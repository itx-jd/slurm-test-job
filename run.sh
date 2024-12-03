#!/bin/bash
#SBATCH --job-name=test_job       # Name of the job
#SBATCH --output=test_%j.out      # Output file name (%j expands to jobID)
#SBATCH --error=test_%j.err       # Error file name (%j expands to jobID)
#SBATCH --ntasks=1                # Number of tasks (processes)
#SBATCH --cpus-per-task=1         # Number of CPU cores per task
#SBATCH --mem=1G                  # Memory required (1 GB)
#SBATCH --time=00:10:00           # Time limit (HH:MM:SS)

# Print some information about the job
echo "Job started on $(hostname) at $(date)"
echo "Working directory: $SLURM_SUBMIT_DIR"

# Load any modules you need (uncomment and modify as needed)
# module load python/3.8

# Your commands go here
echo "Starting test computation..."
sleep 15  # Simulate some work by sleeping for 30 seconds
echo "Test computation completed!"

# Print job completion information
echo "Job finished at $(date)"
