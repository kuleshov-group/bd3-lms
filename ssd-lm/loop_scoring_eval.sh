for TSTEP in 1000
do
  for TOPP in 0.0 0.1 0.2 0.5 0.7 0.9 0.95 0.99
  do
    sbatch -J evalgen -p YOUR_PARTITION --time=3:59:00 --nodes=1 --cpus-per-task=4 --mem=50G --gpus=1 --constraint APPLY_IF_NECESSARY --chdir=/private/home/xhan77/ssd-lm --wrap="HF_HOME='/private/home/xhan77/.cache/huggingface' python evaluation/evaluate.py --generations_file /private/home/xhan77/ssd-lm/logging/ssd_dbs25/ctx25_trunc150_depth1_ctrlr0.0_step${TSTEP}_topp${TOPP}_ssd_gen.jsonl --output_file ctx25_trunc150_depth1_ctrlr0.0_step${TSTEP}_topp${TOPP}_ssd_eval.txt --metrics 'ppl#gpt2-large,ppl#gpt2-xl,ppl#EleutherAI/gpt-neo-1.3B,ppl#facebook/opt-1.3b,mauve,self-bleu,zipf,repetition,dist-n,bleu,bertscore,dummylen'"
    sbatch -J evalgen -p YOUR_PARTITION --time=3:59:00 --nodes=1 --cpus-per-task=4 --mem=50G --gpus=1 --constraint APPLY_IF_NECESSARY --chdir=/private/home/xhan77/ssd-lm --wrap="HF_HOME='/private/home/xhan77/.cache/huggingface' python evaluation/evaluate.py --generations_file /private/home/xhan77/ssd-lm/logging/ssd_dbs25/ctx50_trunc100_depth2_ctrlr0.0_step${TSTEP}_topp${TOPP}_ssd_gen.jsonl --output_file ctx50_trunc100_depth2_ctrlr0.0_step${TSTEP}_topp${TOPP}_ssd_eval.txt --metrics 'ppl#gpt2-large,ppl#gpt2-xl,ppl#EleutherAI/gpt-neo-1.3B,ppl#facebook/opt-1.3b,mauve,self-bleu,zipf,repetition,dist-n,bleu,bertscore,dummylen'"
    sbatch -J evalgen -p YOUR_PARTITION --time=3:59:00 --nodes=1 --cpus-per-task=4 --mem=50G --gpus=1 --constraint APPLY_IF_NECESSARY --chdir=/private/home/xhan77/ssd-lm --wrap="HF_HOME='/private/home/xhan77/.cache/huggingface' python evaluation/evaluate.py --generations_file /private/home/xhan77/ssd-lm/logging/ssd_dbs25/ctx100_trunc0_depth4_ctrlr0.0_step${TSTEP}_topp${TOPP}_ssd_gen.jsonl --output_file ctx100_trunc0_depth4_ctrlr0.0_step${TSTEP}_topp${TOPP}_ssd_eval.txt --metrics 'ppl#gpt2-large,ppl#gpt2-xl,ppl#EleutherAI/gpt-neo-1.3B,ppl#facebook/opt-1.3b,mauve,self-bleu,zipf,repetition,dist-n,bleu,bertscore,dummylen'"

    sbatch -J evalgen -p YOUR_PARTITION --time=3:59:00 --nodes=1 --cpus-per-task=4 --mem=50G --gpus=1 --constraint APPLY_IF_NECESSARY --chdir=/private/home/xhan77/ssd-lm --wrap="HF_HOME='/private/home/xhan77/.cache/huggingface' python evaluation/evaluate.py --generations_file /private/home/xhan77/ssd-lm/logging/ssd_dbs25/ctx25_trunc150_depth1_ctrlr0.0_step${TSTEP}_topp${TOPP}_ssd_gen_sampling.jsonl --output_file ctx25_trunc150_depth1_ctrlr0.0_step${TSTEP}_topp${TOPP}_ssd_eval_sampling.txt --metrics 'ppl#gpt2-large,ppl#gpt2-xl,ppl#EleutherAI/gpt-neo-1.3B,ppl#facebook/opt-1.3b,mauve,self-bleu,zipf,repetition,dist-n,bleu,bertscore,dummylen'"
    sbatch -J evalgen -p YOUR_PARTITION --time=3:59:00 --nodes=1 --cpus-per-task=4 --mem=50G --gpus=1 --constraint APPLY_IF_NECESSARY --chdir=/private/home/xhan77/ssd-lm --wrap="HF_HOME='/private/home/xhan77/.cache/huggingface' python evaluation/evaluate.py --generations_file /private/home/xhan77/ssd-lm/logging/ssd_dbs25/ctx50_trunc100_depth2_ctrlr0.0_step${TSTEP}_topp${TOPP}_ssd_gen_sampling.jsonl --output_file ctx50_trunc100_depth2_ctrlr0.0_step${TSTEP}_topp${TOPP}_ssd_eval_sampling.txt --metrics 'ppl#gpt2-large,ppl#gpt2-xl,ppl#EleutherAI/gpt-neo-1.3B,ppl#facebook/opt-1.3b,mauve,self-bleu,zipf,repetition,dist-n,bleu,bertscore,dummylen'"
    sbatch -J evalgen -p YOUR_PARTITION --time=3:59:00 --nodes=1 --cpus-per-task=4 --mem=50G --gpus=1 --constraint APPLY_IF_NECESSARY --chdir=/private/home/xhan77/ssd-lm --wrap="HF_HOME='/private/home/xhan77/.cache/huggingface' python evaluation/evaluate.py --generations_file /private/home/xhan77/ssd-lm/logging/ssd_dbs25/ctx100_trunc0_depth4_ctrlr0.0_step${TSTEP}_topp${TOPP}_ssd_gen_sampling.jsonl --output_file ctx100_trunc0_depth4_ctrlr0.0_step${TSTEP}_topp${TOPP}_ssd_eval_sampling.txt --metrics 'ppl#gpt2-large,ppl#gpt2-xl,ppl#EleutherAI/gpt-neo-1.3B,ppl#facebook/opt-1.3b,mauve,self-bleu,zipf,repetition,dist-n,bleu,bertscore,dummylen'"
  done
done

for TSTEP in 2500
do
  for TOPP in 0.0 0.1 0.2 0.5 0.7 0.9 0.95 0.99
  do
    sbatch -J evalgen -p YOUR_PARTITION --time=3:59:00 --nodes=1 --cpus-per-task=4 --mem=50G --gpus=1 --constraint APPLY_IF_NECESSARY --chdir=/private/home/xhan77/ssd-lm --wrap="HF_HOME='/private/home/xhan77/.cache/huggingface' python evaluation/evaluate.py --generations_file /private/home/xhan77/ssd-lm/logging/ssd_dbs25/ctx25_trunc150_depth1_ctrlr0.0_step${TSTEP}_topp${TOPP}_ssd_gen.jsonl --output_file ctx25_trunc150_depth1_ctrlr0.0_step${TSTEP}_topp${TOPP}_ssd_eval.txt --metrics 'ppl#gpt2-large,ppl#gpt2-xl,ppl#EleutherAI/gpt-neo-1.3B,ppl#facebook/opt-1.3b,mauve,self-bleu,zipf,repetition,dist-n,bleu,bertscore,dummylen'"
    sbatch -J evalgen -p YOUR_PARTITION --time=3:59:00 --nodes=1 --cpus-per-task=4 --mem=50G --gpus=1 --constraint APPLY_IF_NECESSARY --chdir=/private/home/xhan77/ssd-lm --wrap="HF_HOME='/private/home/xhan77/.cache/huggingface' python evaluation/evaluate.py --generations_file /private/home/xhan77/ssd-lm/logging/ssd_dbs25/ctx50_trunc100_depth2_ctrlr0.0_step${TSTEP}_topp${TOPP}_ssd_gen.jsonl --output_file ctx50_trunc100_depth2_ctrlr0.0_step${TSTEP}_topp${TOPP}_ssd_eval.txt --metrics 'ppl#gpt2-large,ppl#gpt2-xl,ppl#EleutherAI/gpt-neo-1.3B,ppl#facebook/opt-1.3b,mauve,self-bleu,zipf,repetition,dist-n,bleu,bertscore,dummylen'"
    sbatch -J evalgen -p YOUR_PARTITION --time=3:59:00 --nodes=1 --cpus-per-task=4 --mem=50G --gpus=1 --constraint APPLY_IF_NECESSARY --chdir=/private/home/xhan77/ssd-lm --wrap="HF_HOME='/private/home/xhan77/.cache/huggingface' python evaluation/evaluate.py --generations_file /private/home/xhan77/ssd-lm/logging/ssd_dbs25/ctx100_trunc0_depth4_ctrlr0.0_step${TSTEP}_topp${TOPP}_ssd_gen.jsonl --output_file ctx100_trunc0_depth4_ctrlr0.0_step${TSTEP}_topp${TOPP}_ssd_eval.txt --metrics 'ppl#gpt2-large,ppl#gpt2-xl,ppl#EleutherAI/gpt-neo-1.3B,ppl#facebook/opt-1.3b,mauve,self-bleu,zipf,repetition,dist-n,bleu,bertscore,dummylen'"

    sbatch -J evalgen -p YOUR_PARTITION --time=3:59:00 --nodes=1 --cpus-per-task=4 --mem=50G --gpus=1 --constraint APPLY_IF_NECESSARY --chdir=/private/home/xhan77/ssd-lm --wrap="HF_HOME='/private/home/xhan77/.cache/huggingface' python evaluation/evaluate.py --generations_file /private/home/xhan77/ssd-lm/logging/ssd_dbs25/ctx25_trunc150_depth1_ctrlr0.0_step${TSTEP}_topp${TOPP}_ssd_gen_sampling.jsonl --output_file ctx25_trunc150_depth1_ctrlr0.0_step${TSTEP}_topp${TOPP}_ssd_eval_sampling.txt --metrics 'ppl#gpt2-large,ppl#gpt2-xl,ppl#EleutherAI/gpt-neo-1.3B,ppl#facebook/opt-1.3b,mauve,self-bleu,zipf,repetition,dist-n,bleu,bertscore,dummylen'"
    sbatch -J evalgen -p YOUR_PARTITION --time=3:59:00 --nodes=1 --cpus-per-task=4 --mem=50G --gpus=1 --constraint APPLY_IF_NECESSARY --chdir=/private/home/xhan77/ssd-lm --wrap="HF_HOME='/private/home/xhan77/.cache/huggingface' python evaluation/evaluate.py --generations_file /private/home/xhan77/ssd-lm/logging/ssd_dbs25/ctx50_trunc100_depth2_ctrlr0.0_step${TSTEP}_topp${TOPP}_ssd_gen_sampling.jsonl --output_file ctx50_trunc100_depth2_ctrlr0.0_step${TSTEP}_topp${TOPP}_ssd_eval_sampling.txt --metrics 'ppl#gpt2-large,ppl#gpt2-xl,ppl#EleutherAI/gpt-neo-1.3B,ppl#facebook/opt-1.3b,mauve,self-bleu,zipf,repetition,dist-n,bleu,bertscore,dummylen'"
    sbatch -J evalgen -p YOUR_PARTITION --time=3:59:00 --nodes=1 --cpus-per-task=4 --mem=50G --gpus=1 --constraint APPLY_IF_NECESSARY --chdir=/private/home/xhan77/ssd-lm --wrap="HF_HOME='/private/home/xhan77/.cache/huggingface' python evaluation/evaluate.py --generations_file /private/home/xhan77/ssd-lm/logging/ssd_dbs25/ctx100_trunc0_depth4_ctrlr0.0_step${TSTEP}_topp${TOPP}_ssd_gen_sampling.jsonl --output_file ctx100_trunc0_depth4_ctrlr0.0_step${TSTEP}_topp${TOPP}_ssd_eval_sampling.txt --metrics 'ppl#gpt2-large,ppl#gpt2-xl,ppl#EleutherAI/gpt-neo-1.3B,ppl#facebook/opt-1.3b,mauve,self-bleu,zipf,repetition,dist-n,bleu,bertscore,dummylen'"
  done
done
