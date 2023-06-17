python chatllms/train/qlora_int4_finetune.py \
    --model_name_or_path EleutherAI/pythia-12b \
    --output_dir ./output \
    --dataset alpaca \
    --do_train True \
    --do_eval True \
    --do_mmlu_eval True \
    --source_max_len 384 \
    --target_max_len 128 \
    --per_device_train_batch_size 4 \
    --per_device_eval_batch_size 4 \
    --gradient_accumulation_steps 4 \
    --logging_steps 10 \
    --max_steps 10000 \
    --save_strategy steps \
    --data_seed 42 \
    --save_steps 1000 \
    --save_total_limit 40 \
    --evaluation_strategy steps \
    --eval_dataset_size 1024 \
    --max_eval_samples 1000 \
    --eval_steps 1000 \
    --optim paged_adamw_32bit \
