CUDA_VISIBLE_DEVICES=3 python train_qlora.py \
    --model_name_or_path  ~/checkpoints/llama7b  \
    --multiturn_dialogue True \
    --data_path ~/prompt_data/sharegpt/sharegpt_split.json \
    --output_dir ./work_dir/sharegpt-llama-7b-1gpu \
    --num_train_epochs 3 \
    --per_device_train_batch_size 2 \
    --per_device_eval_batch_size 2 \
    --gradient_accumulation_steps 16 \
    --evaluation_strategy steps \
    --eval_steps 200 \
    --save_strategy steps \
    --save_total_limit 5 \
    --save_steps 500 \
    --logging_strategy steps \
    --logging_steps 5 \
    --learning_rate 0.0002 \
    --warmup_ratio 0.03 \
    --weight_decay 0.0 \
    --lr_scheduler_type constant \
    --adam_beta2 0.999 \
    --max_grad_norm 0.3 \
    --lora_r 64 \
    --lora_alpha 16 \
    --lora_dropout 0.1 \
    --double_quant \
    --quant_type nf4 \
    --fp16 \
    --bits 4 \
    --model_max_length 2048 \
    --gradient_checkpointing \
    --lazy_preprocess True \
    --trust_remote_code \
    --do_train \
    --do_eval \
    --data_seed 42 \
    --seed 0 \
