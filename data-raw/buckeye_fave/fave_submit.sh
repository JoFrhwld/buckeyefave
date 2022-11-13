#!/bin/bash

#SBATCH --job-name=fave-extract  # create a short name for your job
#SBATCH --nodes=1                # node count
#SBATCH --ntasks=1               # total number of tasks across all nodes
#SBATCH --cpus-per-task=1        # cpu-cores per task (>1 if multi-threaded tasks)
#SBATCH --time=05:00:00          # total run time limit (HH:MM:SS)

for tg in ../buckeye/s[2-9][0-9].TextGrid;
do
  filename=$(basename "$tg")
  speaker="${filename%.*}"
  stem="${tg%.*}"
  $HOME/.conda/envs/fave/bin/fave-extract +config.txt --speaker $stem.speaker $stem.wav $stem.TextGrid $speaker
done;
