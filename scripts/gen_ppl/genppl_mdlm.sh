#!/bin/bash
#SBATCH -J genppl_mdlm                # Job name
#SBATCH -o watch_folder/%x_%j.out     # log file (out & err)
#SBATCH -e watch_folder/%x_%j.err     # log file (out & err)
#SBATCH -N 1                          # Total number of nodes requested
#SBATCH --get-user-env                # retrieve the users login environment
#SBATCH --mem=32G                  # server memory requested (per node)
#SBATCH -t 960:00:00                  # Time limit (hh:mm:ss)
#SBATCH --partition=gpu          # Request partition
#SBATCH --constraint="[a5000|a6000|a100|3090]"
#SBATCH --constraint="gpu-mid|gpu-high"
#SBATCH --ntasks-per-node=1
#SBATCH --gres=gpu:1                  # Type/number of GPUs needed
#SBATCH --open-mode=append            # Do not overwrite logs
#SBATCH --requeue                     # Requeue upon preemption

LENGTH=$1
SEED=$2

# use model trained w/o eos for variable-length generation
srun python -u -m main \
    mode=sample_eval \
    loader.eval_batch_size=1 \
    data=openwebtext-split \
    algo=mdlm \
    algo.T=5000 \
    block_size=1024 \
    model.length=$LENGTH \
    eval.checkpoint_path=/share/kuleshov/ma2238/textdiffusion/checkpoints/mari-owt-mdlm-noeos-v4/last.ckpt \
    +wandb.offline=true \
    seed=$SEED \
    sampling.nucleus_p=0.9 \
    sampling.logdir=/home/ma2238/sar_os/text-diffusion/sample_logs/samples_mdlm_len${LENGTH}