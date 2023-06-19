python qlora_finetune.py \
    --model_name_or_path facebook/opt-125m \
    --dataset_name /home/robin/prompt_data/InstructionWild/instinwild_en.json \
    --output_dir ./work_dir/llama-7b \
    --num_train_epochs 3 \
    --per_device_train_batch_size 1 \
    --per_device_eval_batch_size 1 \
    --gradient_accumulation_steps 16 \
    --evaluation_strategy steps \
    --eval_steps 2000 \
    --eval_dataset_size 1024 \
    --max_eval_samples 1000 \
    --save_strategy steps \
    --save_total_limit 5 \
    --save_steps 500 \
    --logging_strategy steps \
    --logging_steps 10 \
    --learning_rate 0.0002 \
    --warmup_ratio 0.03 \
    --weight_decay 0.0 \
    --lr_scheduler_type constant \
    --adam_beta2 0.999 \
    --max_grad_norm 0.3 \
    --max_new_tokens 32 \
    --source_max_len 512 \
    --target_max_len 512 \
    --lora_r 64 \
    --lora_alpha 16 \
    --lora_dropout 0.1 \
    --double_quant \
    --quant_type nf4 \
    --fp16 \
    --bits 4 \
    --gradient_checkpointing \
    --do_predict \
    --data_seed 42 \
    --seed 0
